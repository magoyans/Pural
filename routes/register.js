const express = require ('express');
const router = express.Router();
const usersModels = require('./../models/usersModel');
const md5 = require('md5');

/* GET home page. */
router.get('/', function(req, res, next) {
  if(req.session.usuario || req.session.admin) {
    status_session = true
  } else {
    status_session = false
  }
  res.render('register', { title: 'Join', session : status_session}); 
});


// POST
router.post('/', async (req, res, next) =>{
  console.log(req.body);
  let objUsr = {
      email: req.body.email,
      name: req.body.name,
      lastName: req.body.lastName,
      phone: req.body.phone,
      password: md5(req.body.password)
  //el primero tiene que matchear la tabla y el segundo el name del input en el hbs
  }

  let result = await usersModels.createUser(objUsr);
  if (result){
      res.render('register', { status: true, message: 'Register correct'});
      
  }else{
      res.render('register', {status: false, message: 'Error'});
  }

})


module.exports = router;