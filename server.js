const express = require('express');
const path = require('path');

const port = process.env.PORT || 3000;

express()
  .get('/ping', (req, res) => {
    res.send('pong')
  })
  .listen(port)
