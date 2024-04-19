const express = require('express');
const app = express();
const cors = require('cors');


require('./database'); 
app.use(cors());

app.use('/', require('../src/routes/index'));


app.get('/', function (req, res) {
  res.send('Hello World!');
});

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});