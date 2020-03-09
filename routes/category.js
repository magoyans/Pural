var express = require('express');
var router = express.Router();
const productModel = require('../models/productModel');

/* GET home page. */
router.get('/:id', async(req, res, next)=>{
  let id_categoria = req.params.id;
  let data = await productModel.getProductsByCategory(id_categoria);
  console.log(data);
  res.render('category', { title: 'Category', products_category:data });
  })

module.exports = router;