$(function() {
    $("#userName").textbox({
        type : 'text',
        iconCls : 'icon-man',
        iconAlign : 'left',
        prompt : '请输入用户名',
        width : 150,
        height : 30
    });
    $("#pwd").textbox({
        type : 'password',
        iconCls : 'icon-lock',
        iconAlign : 'left',
        prompt : '请输入与密码',
        width : 150,
        height : 30
    });

    $('#submit').linkbutton({
        iconCls : 'icon-ok'
    });

    $('#reset').linkbutton({
        iconCls : 'icon-reload'
    });
    $("#reset").bind('click', function() {
        //$("#userName").textbox('reset');
        //$("#pwd").textbox('reset');
        $("#user").form("reset");
    });
    
    $('#submit').bind('click', function() {
        if (validateNotNull) {
            alert("请输入用户名、密码、验证码");
        } else {
            /*
            $.post('', {
                            "userName" : userName,
                            "pwd" : pwd
                        });*/
            $("#user").form({
                success:function(data){
                    
                }
            });
        }
    });

    var code;
    //在全局定义验证码
    //产生验证码
    window.onload = createCode();

    $('#code').bind('click', function() {
        createCode();
    });
});

function createCode() {
    code = "";
    var codeLength = 4;
    //验证码的长度
    var random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
    //随机数
    for (var i = 0; i < codeLength; i++) {//循环操作
        var index = Math.floor(Math.random() * 36);
        //取得随机数的索引（0~35）
        code += random[index];
        //根据索引取得随机数加到code上
    }
    $("#code").val(code);
    //把code值赋给验证码
}; 

function validateNotNull(){
    var userName = $("#userName").val();
    var pwd = $("#pwd").val();
    var code = $("#code").val();
    return userName == "" || pwd == "" || code == "";
}
