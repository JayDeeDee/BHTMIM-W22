const path = require('path');

module.exports = {
  development: {
    sitename: 'Das GRASSI-KOLLEG',
    data: {
      speakers: path.join(__dirname, '../data/speakers.json'),
      feedback: path.join(__dirname, '../data/feedback.json'),
    },
  },
  production: {
    sitename: 'Das GRASSI-KOLLEG',
    data: {
      speakers: path.join(__dirname, '../data/speakers.json'),
      feedback: path.join(__dirname, '../data/feedback.json'),
    },
  },
};
