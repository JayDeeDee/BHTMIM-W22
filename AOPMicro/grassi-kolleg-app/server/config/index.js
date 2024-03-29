const path = require('path');

module.exports = {
  development: {
    sitename: 'Das GRASSI-KOLLEG',
    serviceRegistryUrl: 'http://localhost:3000',
    serviceVersionIdentifier: '1.x.x',
    data: {
      feedback: path.join(__dirname, '../data/feedback.json'),
    },
  },
  production: {
    sitename: 'Das GRASSI-KOLLEG',
    serviceRegistryUrl: 'http://localhost:3000',
    serviceVersionIdentifier: '1.x.x',
    data: {
      feedback: path.join(__dirname, '../data/feedback.json'),
    },
  },
};
