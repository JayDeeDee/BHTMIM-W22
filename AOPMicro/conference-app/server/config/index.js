const path = require('path');

module.exports = {
  development: {
    sitename: 'Konferenz des Grassi Museums [Development]',
    serviceRegistryUrl: 'http://localhost:3000',
    serviceVersionIdentifier: '1.x.x',
    data: {
      feedback: path.join(__dirname, '../data/feedback.json'),
    },
  },
  production: {
    sitename: 'Konferenz des Grassi Museums',
    serviceRegistryUrl: 'http://localhost:3000',
    serviceVersionIdentifier: '1.x.x',
    data: {
      feedback: path.join(__dirname, '../data/feedback.json'),
    },
  },
};
