var express = require('express');
var router = express.Router();
const productModel = require('./../models/productModel');
const adminModel = require('../models/adminModel');

/* All products */
router.get('/', function(req, res, next) {
    res.render('product', { title: 'All products' });
});

/*Product by ID*/
router.get ('/:id', async (req, res, next)=>{
    let id =  req.params.id;
    let data = await productModel.getProduct(id);
    res.render('product', {product_array: data, title: 'Product'});
})

/*All products*/
router.get('/all', async(req, res,next)=>{
    let data = adminModel.getProductsAdmin();
    console.log(data);
    res.render('all', {all_products: data, title: 'All Products'})
})

module.exports = router; 