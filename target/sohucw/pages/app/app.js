/**
 * Created by baidu on 15/12/18.
 */




    var express = require('express');
    var http = require('http');
    var path = require('path');
    var routes = require('./routes/index');
    var app = express();
    var bodyParser = require( 'body-parser' ),
        server = http.Server(app);


    /*
     *
     * setting
     * */

    app.set('port', process.env.PORT || 3000);

    app.set('views',__dirname + '/views');

//app.engine('html', engines.mustache);

//app.engine( 'html' , require( 'ejs' ).renderFile);   // 设置 views 下文件的 后缀名

    app.set( 'view engine', 'js' ); //页面引擎

    app.use('/', express.static(path.join(__dirname, 'static'))); // 静态文件路径

    app.use( bodyParser.urlencoded({ extended: false }));

// console.log(path.join(__dirname, '/static'));


    routes.all(app)

    server.listen(app.get('port'), function () {
        console.log('root server listening on port' + app.get('port'));
    });

    server.on('close', function () {
        console.log( 'server close!!!');
    });




