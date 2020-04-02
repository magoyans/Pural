var express = require('express');
var router = express.Router();
const productModel = require('./../models/productModel');
const adminModel = require('../models/adminModel');

/* All products */
router.get('/all', async(req, res,next)=>{
    if(req.session.usuario || req.session.admin) {
        status_session = true
    } else {
        status_session = false
    }
    let data = await  adminModel.getProductsAdmin();
    res.render('all', {all_products: data, title: 'All Products', session : status_session})
})

/*Product by ID*/
router.get ('/:id', async (req, res, next)=>{
    if(req.session.usuario || req.session.admin) {
        status_session = true
    } else {
        status_session = false
    }
    let id =  req.params.id;
    let data = await productModel.getProduct(id);
    res.render('product', {product_array: data, title: 'Product',  session : status_session});
})

/*All products*/

module.exports = router; 