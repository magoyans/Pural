var express = require('express');
var router = express.Router();
const productModel = require('../models/productModel')

/* GET home page. */
router.get('/', async function(req, res, next) {
  if(req.session.usuario || req.session.admin) {
      status_session = true
  } else {
      status_session = false
  }
  let data = await productModel.indexCategory();
  res.render('index', { title: 'Beauty Products', session : status_session, index_category : data});
});

module.exports = router;
