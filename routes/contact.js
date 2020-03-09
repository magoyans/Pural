var express = require('express');
var router = express.Router();
const correoModel = require('../models/correoModel');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('contact', { title: 'Contact Us' });
});

//POST (recibe datos y envia correo)
router.post('/',async (req,res,next)=> {
  let objMsg = {
      name: req.body.name,
      email : req.body.email,
      message : req.body.message
  }
  let respuesta = await correoModel.main(objMsg);
  if(respuesta) {
      res.render('contact', {status : true,message : 'Message sent. We will contact you ASAP'})
  } else {
      res.render('contact', {status : false,message : 'There was an error. Please try again later'})
  }
})

module.exports = router;