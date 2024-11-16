const express = require('express');
const cors = require('cors');
const routes = require('./routes');

// Create the Express app
const app = express();

// Allow the app to accept JSON in the request body
app.use(express.json());
app.use(cors());
app.use('/api', routes);

module.exports = app;