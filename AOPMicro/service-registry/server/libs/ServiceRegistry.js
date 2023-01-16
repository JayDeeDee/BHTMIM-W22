// Load semver as CommonJS module
const semver = require('semver');

class ServiceRegistry {
  constructor(log) {
    this.log = log;
    this.services = {};
    this.timeout = 30;
  }

  /**
   * get micro service
   * @param {string} name name of the requested service
   * @param {string} version version of the requested service
   * @returns candidate
   */
  get(name, version) {
    this.cleanup();
    // versioning
    const candidates = Object.values(this.services)
      .filter(service => service.name === name && semver.satisfies(service.version, version));
    // randomnes = load balancing light (if there are at least 2 candidates)
    return candidates[Math.floor(Math.random() * candidates.length)];
  }

  /**
   * register micro service
   * @param {string} name name of the service
   * @param {string} version version of the service
   * @param {string} ip the service uses
   * @param {string} port port the services uses
   * @returns service key
   */
  register(name, version, ip, port) {
    this.cleanup();
    // store the service as identifiable key
    const key = name + version + ip + port;

    if (!this.services[key]) {
      // initialize entry with empty object
      this.services[key] = {};
      // set unix timestamp in seconds
      this.services[key].timestamp = Math.floor(new Date() / 1000);
      this.services[key].name = name;
      this.services[key].version = version;
      this.services[key].ip = ip;
      this.services[key].port = port;
      this.log.debug(`ServiceRegistry: added new service ${name} added (version ${version} at ${ip}:${port})`);
    } else {
      this.services[key].timestamp = Math.floor(new Date() / 1000);
      this.log.debug(`ServiceRegistry: updated service ${name} added (version ${version} at ${ip}:${port})`);
    }

    return key;
  }

  /**
   * unregister micro service
   * @param {string} name name of the service
   * @param {string} version version of the service
   * @param {string} ip the service uses
   * @param {string} port port the services uses
   * @returns service key
   */
  unregister(name, version, ip, port) {
    // use identifiable service key that was used to register service
    const key = name + version + ip + port;
    delete this.services[key];
    this.log.debug(`ServiceRegistry: unregister service ${name} (version ${version} at ${ip}:${port})`);
    return key;
  }

  /**
   * deletes inactive services with timestamp older than timeout
   */
  cleanup() {
    const now = Math.floor(new Date() / 1000);
    Object.keys(this.services).forEach((key) => {
      if (this.services[key].timestamp + this.timeout < now) {
        delete this.services[key];
        this.log.debug(`ServiceRegistry: remove inactive service ${key}`);
      }
    });
  }
}

module.exports = ServiceRegistry;
