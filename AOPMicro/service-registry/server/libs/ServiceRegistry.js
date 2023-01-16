class ServiceRegistry {
  constructor(log) {
    this.log = log;
    this.services = {};
    this.timeout = 30;
  }

  /**
   * register service
   * @param {*} name name of the service
   * @param {*} version version of the service
   * @param {*} ip ip the service uses
   * @param {*} port port the services uses
   * @returns service key
   */
  register(name, version, ip, port) {
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
}

module.exports = ServiceRegistry;
