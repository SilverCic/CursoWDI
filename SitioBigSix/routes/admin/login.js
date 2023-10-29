var express = require('express');
var router = express.Router();
var users_model = require('../../models/users_model');

router.get('/', function(req, res, next) {
    res.render('admin/login', {
        layout:'admin/layout'
    });
  });

  router.post('/', async (req, res, next) => {
    try {
        console.log(req.body);
        var user = req.body.user;
        var password = req.body.password;

        var data = await users_model.get_user_and_password(user, password);

        if (data != undefined) {
            req.session.id_users = data.id_users;
            req.session.nombre = data.user
            res.redirect('/');
        } else {
            res.render('admin/login', {
                layout: 'admin/layout',
                error: true
            })
        }
    } catch (error) {
        console.log(error)
    }
  })

  module.exports = router; 