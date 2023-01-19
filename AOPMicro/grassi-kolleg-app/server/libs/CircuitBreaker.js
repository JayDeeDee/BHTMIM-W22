const axios = require('axios');

class CircuitBreaker {
  constructor() {
    this.states = {};
    this.failureThreshold = 5;
    this.cooldownPeriod = 10;
    this.requestTimeout = 1;
  }

  /**
   * use circuit breaker when calling service
   * @param {obj} requestOptions object literal with options
   * @returns {boolean}
   */
  async callService(requestOptions) {
    const endpoint = `${requestOptions.method}:${requestOptions.url}`;

    if (!this.canRequest(endpoint)) return false;

    // eslint-disable-next-line no-param-reassign
    requestOptions.timeout = this.requestTimeout * 1000;

    try {
      const response = await axios(requestOptions);
      this.onSuccess(endpoint);
      return response.data;
    } catch (err) {
      this.onFailure(endpoint);
      return false;
    }
  }

  /**
   * success event handler for circuit breaker
   * @param {state} endpoint
   */
  onSuccess(endpoint) {
    this.initState(endpoint);
  }

  /**
   * failure event handler for circuit breaker
   * @param {state} endpoint
   */
  onFailure(endpoint) {
    const state = this.states[endpoint];
    state.failures += 1;
    if (state.failures > this.failureThreshold) {
      state.circuit = 'OPEN';
      state.nextTry = new Date() / 1000 + this.cooldownPeriod;
      console.log(`ALERT! Circuit for ${endpoint} is in state 'OPEN'`);
    }
  }

  /**
   * checks wether to handle request or not
   * @param {state} endpoint
   * @returns {boolean} isTrue
   */
  canRequest(endpoint) {
    if (!this.states[endpoint]) this.initState(endpoint);
    const state = this.states[endpoint];
    if (state.circuit === 'CLOSED') return true;
    const now = new Date() / 1000;
    if (state.nextTry <= now) {
      state.circuit = 'HALF';
      return true;
    }
    return false;
  }

  /**
   * init the circuit break
   * @param {state} endpoint
   */
  initState(endpoint) {
    this.states[endpoint] = {
      failures: 0,
      cooldownPeriod: this.cooldownPeriod,
      circuit: 'CLOSED',
      nextTry: 0,
    };
  }
}

module.exports = CircuitBreaker;
