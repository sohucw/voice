/**
 * Created by baidu on 15/12/18.
 */




    var config = require('../conf/site');
    var register = require('./register');


    console.log(config);
    exports.all = function (app) {


        app.get('/', function (req, res){

            res.render('index.ejs', config.setting(req,'./index', 'index'));

        });
        // 注册模块
        app.get('/register', function (req, res) {
            // register.register(req,res);

            res.render( 'register.ejs', config.setting(req,'./register', 'register'));
        });


        app.post('/register', function( req, res ){
            register.registerUser( req, res );
        });

    };

