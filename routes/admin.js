var express = require('express');
var router = express.Router();
const adminModel = require('./../models/adminModel');
const productModel = require('./../models/productModel');

//Renderizar vista admin 
router.get('/', async (req, res, next)=>{
    try{
        let data = await adminModel.getProductsAdmin();
        res.render('admin', {products_array: data, title: 'Administrator' });        
    }catch(error){
        res.render('errorpage');
        console.log(error);
    }
})

//Mostrar vista para editar
router.get('/edit/:id', async (req,res,next)=>{
    try{
        let id = req.params.id;
        let product = await productModel.getProduct(id);
        res.render('edit', {product_array: product, title: 'Edit product' });
    }catch(error){
        console.log(error);
        res.render('errorpage')
    }
})

//Editar un producto
router.post('/edit', async(req,res,next)=> {
    try {
        let objProd = {
            name : req.body.name,
            description : req.body.description,
            price: req.body.price,
            weight: req.body.weight,
        }
        let id_prod = req.body.id_prod;
        let respuesta = await adminModel.updateProd(objProd,id_prod);
        console.log(respuesta);
        res.redirect('/admin');
    } catch(error) {
        console.log(error);
        res.render('errorpage');
    }
})

//Eliminar un producto
router.get('/delete/:id', async(req, res, next)=>{
    try{
        let id = req.params.id;
        await adminModel.deleteProducts(id);
        res.redirect('/admin');
    }catch(error){
        res.render('errorpage');
        console.log(error);
    }
})

//Agregar nuevo producto
router.post('/new', async (req, res, next)=>{
    try{
        let objProd = {
            name: req.body.name,
            description : req.body.description,
            price: req.body.price,
            weight: req.body.weight,
            type: req.body.type,
            id_category: req.body.category,
            img: req.body.img,
        }
    let product = await adminModel.addProduct(objProd)
    
    if(resultado){
        res.render('new', {status : true,message : 'Saved'});
    } else {
        res.render('new', {status : false,message : 'Error'}); 
    }

    }catch(error){
        res.render('errorpage');
        console.log(error);
    }
})

module.exports = router;