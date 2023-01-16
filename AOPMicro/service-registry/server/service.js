// Load express as CommonJS module
const express = require('express');
// Top-level func to create express app
const service = express();
// const ServiceRegistry = require('./ServiceRegistry');

module.exports = (config) => {
  const log = config.log();
  // Add a request logging middleware in development mode
  if (service.get('env') === 'development') {
    service.use((req, res, next) => {
      log.debug(`${req.method}: ${req.url}`);
      return next();
    });
  }

  // REST API: get service
  service.get('/register/:servicename/:serviceversion/', (req, res, next) => {
    return next('Service is not implemented.');
  });

  // REST API: put service
  service.put('/register/:servicename/:serviceversion/:serviceport', (req, res, next) => {
    return next('Service is not implemented.');
  });

  // REST API: delete service
  service.delete('/register/:servicename/:serviceversion/:serviceport', (req, res, next) => {
    return next('Service is not implemented.');
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
