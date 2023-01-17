/* eslint-disable class-methods-use-this */
const axios = require('axios');
const crypto = require('crypto');
const url = require('url');

const CircuitBreaker = require('../libs/CircuitBreaker');
// global instance of circuit breaker;
const circuitBreaker = new CircuitBreaker();

class SpeakersService {
  constructor({ serviceRegistryUrl, serviceVersionIdentifier }) {
    this.serviceRegistryUrl = serviceRegistryUrl;
    this.serviceVersionIdentifier = serviceVersionIdentifier;
    this.cache = {};
  }

  /**
   * get served speaker image
   * @param {path} path of the image
   * @returns image stream
   */
  async getImage(path) {
    const { ip, port } = await this.getService('speakers-service');
    return this.callService({
      method: 'get',
      responseType: 'stream',
      url: `http://${ip}:${port}/images/${path}`,
    });
  }

  /**
   * get all speaker names
   * @returns json structure of all speaker names
   */
  async getNames() {
    const { ip, port } = await this.getService('speakers-service');
    return this.callService({
      method: 'get',
      url: `http://${ip}:${port}/names`,
    });
  }

  /**
   * get short version of the speaker information
   * @returns json structure of speaker name and event title
   */
  async getListShort() {
    const { ip, port } = await this.getService('speakers-service');
    return this.callService({
      method: 'get',
      url: `http://${ip}:${port}/list-short`,
    });
  }

  /**
   * get all information for the speakers
   * @returns json structure of full information list
   */
  async getList() {
    const { ip, port } = await this.getService('speakers-service');
    return this.callService({
      method: 'get',
      url: `http://${ip}:${port}/list`,
    });
  }

  /**
   * get all artwork information
   * @returns json structure with artwork information
   */
  async getAllArtwork() {
    const { ip, port } = await this.getService('speakers-service');
    return this.callService({
      method: 'get',
      url: `http://${ip}:${port}/artwork`,
    });
  }

  /**
   * get speakers from micro service
   * @param {string} shortname short name of the speaker
   * @returns json structure with speaker information
   */
  async getSpeaker(shortname) {
    const { ip, port } = await this.getService('speakers-service');
    return this.callService({
      method: 'get',
      url: `http://${ip}:${port}/speaker/${shortname}`,
    });
  }

  /**
   * get artwork of given speaker
   * @param {string} shortname short name of the speaker
   * @returns json structure with speaker's artwork
   */
  async getArtworkForSpeaker(shortname) {
    const { ip, port } = await this.getService('speakers-service');
    return this.callService({
      method: 'get',
      url: `http://${ip}:${port}/artwork/${shortname}`,
    });
  }

  /**
   * helper func for service calls with circuit breaker and caching
   * @param {*} requestOptions given object literal with options
   * @returns response data of the request
   */
  async callService(requestOptions) {
    const servicePath = url.parse(requestOptions.url).path;
    const cacheKey = crypto.createHash('md5').update(requestOptions.method + servicePath).digest('hex');
    const result = await circuitBreaker.callService(requestOptions);

    // if no result try to return cached result
    if (!result) {
      if (this.cache[cacheKey]) {
        return this.cache[cacheKey];
      }
      return false;
    }

    this.cache[cacheKey] = result;

    return result;
  }

  /**
   * helper func for getting a service
   * @param {*} servicename name of the service
   * @returns response data of the request
   */
  async getService(servicename) {
    const response = await axios.get(`${this.serviceRegistryUrl}/find/${servicename}/${this.serviceVersionIdentifier}`);
    return response.data;
  }
}

module.exports = SpeakersService;
