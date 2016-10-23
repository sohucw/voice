/**
 * Created by baidu on 15/12/18.
 */

// define( function(){
/*    $( '#registerForm' ).on( 'submit', function(){
        var data = {
            username: $('#username').val(),
            password: $('#password').val(),
            email: $('#email').val()
        };
        $.ajax({
            url: '/register',
            type: 'post',
            dataType: 'json',
            data: data,
            success: function( ret ){
                console.log( ret );
            }
        });
        return false;
    })*/

//});

function register( req, res ){ //定义注册转向
    res.render( 'register.ejs' );
}
function registerUser( req, res ){
    res.send( { code: 0, msg: 'register info access success',data: req.body } );
    //这里原本是要处理数据库存储操作，这里先走通ajax通信，验证能成功获取数据
}
module.exports = { //对外公开register函数
    register: register,
    registerUser: registerUser
}