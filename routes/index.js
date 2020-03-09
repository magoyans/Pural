var express = require('express');
var router = express.Router();
const productModel = require('../models/productModel')

/* GET home page. */
router.get('/', async function(req, res, next) {
  let data_productos = await productModel.getProducts();
  console.log(data_productos)
  res.render('index', { title: 'Beauty Products' , array_productos : data_productos });
});

module.exports = router;
