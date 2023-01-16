// Load express as CommonJS module
const express = require('express');
// Load ServiceRegistry Class as CommonJS module
const ServiceRegistry = require('./libs/ServiceRegistry');
// Top-level func to create express app
const service = express();
// const ServiceRegistry = require('./ServiceRegistry');

module.exports = (config) => {
  const log = config.log();
  // add instance of ServiceRegistry
  const serviceRegistry = new ServiceRegistry(log);

  // Add a request logging middleware in development mode
  if (service.get('env') === 'development') {
    service.use((req, res, next) => {
      log.debug(`${req.method}: ${req.url}`);
      return next();
    });
  }

  // REST API: get service
  service.get('/find/:servicename/:serviceversion/', (req, res) => {
    const { servicename, serviceversion } = req.params;
    const currentservice = serviceRegistry.get(servicename, serviceversion);

    if (!currentservice) {
      return res.status(404).json({ result: 'Service not found' });
    }

    return res.json(currentservice);
  });

  // REST API: put for registering service
  service.put('/register/:servicename/:serviceversion/:serviceport', (req, res) => {
    const { servicename, serviceversion, serviceport } = req.params;
    // if ip6 use proper notation
    const serviceip = req.connection.remoteAddress.includes('::') ? `[${req.connection.remoteAddress}]` : req.connection.remoteAddress;
    const servicekey = serviceRegistry
      .register(servicename, serviceversion, serviceip, serviceport);

    return res.json({ result: servicekey });
  });

  // REST API: delete service
  service.delete('/register/:servicename/:serviceversion/:serviceport', (req, res) => {
    const { servicename, serviceversion, serviceport } = req.params;
    // if ip6 use proper notation
    const serviceip = req.connection.remoteAddress.includes('::') ? `[${req.connection.remoteAddress}]` : req.connection.remoteAddress;
    const servicekey = serviceRegistry
      .unregister(servicename, serviceversion, serviceip, serviceport);

    return res.json({ result: servicekey });
  });

  // eslint-disable-next-line no-unused-vars
  service.use((error, req, res, next) => {
    res.status(error.status || 500);
    // Log out errors to the console
    log.error(error);
    return res.json({
      error: {
        message: error.message,
      },
    });
  });
  return service;
};
