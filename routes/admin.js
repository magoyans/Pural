var express = require('express');
var router = express.Router();
const adminModel = require('./../models/adminModel');
const productModel = require('./../models/productModel');
const multer = require('multer');
const uuid = require('node-uuid');
const fs = require('fs');
const upload = multer({dest : './uploads'});

//Renderizar vista admin 
router.get('/', async (req, res, next)=>{
    try{
        let status_session;
        if(req.session.usuario || req.session.admin) {
            status_session = true
        } else {
            status_session = false
        }
        let data = await adminModel.getProductsAdmin();
        res.render('admin', {products_array: data, title: 'Administrator', session : status_session});        
    }catch(error){
        res.render('errorpage');
        console.log(error);
    }
})

//Mostrar vista para editar
router.get('/edit/:id', async (req,res,next)=>{
    try{
        let status_session;
        if(req.session.usuario || req.session.admin) {
            status_session = true
        } else {
            status_session = false
        }
        let id = req.params.id;
        let product = await productModel.getProduct(id);
        res.render('edit', {product_array: product, title: 'Edit product', session : status_session });
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

//Renderizar la vista new 
router.get('/new', async (req,res,next)=> {
    try{
        let status_session;
        if(req.session.usuario || req.session.admin) {
            status_session = true
        } else {
            status_session = false
        }
        let category = await adminModel.getCategory();
        let type = await adminModel.getType();
        res.render('new', {array_category: category, array_type: type, title: 'New product', session : status_session});
    }catch(error){
        res.render('errorpage');
        console.log(error);
    }
})

//Agregar nuevo producto
router.post('/new', upload.array('img',1), async (req, res, next)=>{
    try{
        var name_imagen = '';
        if(req.files[0].mimetype == 'image/jpeg' || req.files[0].mimetype == 'image/png') {
            if(req.files[0].size <= 1000000) {
                // enctype ="multipart/form-data"
                let array_mime = req.files[0].mimetype.split('/'); //image/jpeg
                let ext = array_mime[1]; // png | jpeg
                let nombre_aleatorio = uuid();
                name_imagen = nombre_aleatorio + "." + ext;
                let temporal_name = req.files[0].filename;
    
                fs.createReadStream('./uploads/'+temporal_name).pipe(fs.createWriteStream('./public/images/'+name_imagen))
    
    
                fs.unlink('./uploads/'+temporal_name, (err)=>{
                    if(err){
                        console.log(err);
                    } else {
                        console.log("temporal borrado")
                    }
                })            
    
            }else{
                console.log("Selecciona una imagen más chica")
            }
        } else {
            console.log("Formato incorrecto")
        }

        let objProd = {
            name: req.body.name,
            description : req.body.description,
            price: req.body.price,
            weight: req.body.weight,
            id_type: req.body.type,
            id_category: req.body.category,
            img: name_imagen
        }
    let product = await adminModel.addProduct(objProd);
    res.redirect('/admin');
    }catch(error){
        res.render('errorpage');
        console.log(error);
    }
})

module.exports = router;