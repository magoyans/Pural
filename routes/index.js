var express = require('express');
var router = express.Router();
const productModel = require('../models/productModel')

/* GET home page. */
router.get('/', async function(req, res, next) {
  res.render('index', { title: 'Beauty Products'});
});

module.exports = router;
