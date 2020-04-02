var express = require('express');
var router = express.Router();
const usersModels = require('./../models/usersModel');
const md5 = require ('md5');


//GET LOGIN PAGE
router.get('/', function(req, res, next) {
  if(req.session.usuario || req.session.admin) {
    status_session = true
  } else {
    status_session = false
  }
  res.render('login', { title: 'Login', session : status_session});
});

//POST
router.post('/',  async(req,res,next) =>{
  if(req.body.password != "" && req.body.email != ""){
      let result = await usersModels.authUser(req.body.email, md5(req.body.password));
      console.log(result)
      if (result.length>0){
          let id = result[0].id_user;
          let permissions = result[0].permissions;
          if(permissions == 1){
            req.session.admin = id;
            res.redirect('/admin');
        }else{
            req.session.usuario = id;
            res.redirect('/');
        }
      }else{
          res.render('login', {message: "User or password are incorrect"})
      }
  }else{
      res.render('login', {message: "¡Oops! Fields are empty"})
  }
})

module.exports = router;