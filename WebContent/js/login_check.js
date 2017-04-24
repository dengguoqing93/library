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
		$("#user").form("reset");
	});

	$('#submit').bind('click', function() {
		if (validateNotNull()) {
			alert("请输入用户名、密码、验证码");
		} else {
			$("#user").form('submit', {
				url : '/library/admin/loginVertify',

				onSubmit : function() {
					var yzm = $("#yzm").val() == $("#code").val();
					if (!yzm) {
						alert("验证码输入有误");
						return false;
					};
				},
				success : function(msg) {
					alert(msg);
					if(msg=="true"){
						alert("用户名或密码输入错误");
					}else{
						 window.location.href = '/library/html/mainPage.html?username='+$("#userName").val();
					}
					
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
	/* 失去焦点时验证用户名是否存在 */
	$("input", $("#userName").next("span")).blur(function() {
		$("#msg").text("");
		$.ajax({
			url:'/library/admin/vertifyAdminName',
			type:'POST',
			contentType: "application/json", 
			data: JSON.stringify({ 'username': $('#userName').val()}),
			success:function(data){
				$("#msg").text(data);
			}
		});
	});

});

/*
 * 创建验证码
 */
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
/*
 * 验证输入的用户名，密码和验证码非空
 */
function validateNotNull() {
	var userName = $("#userName").val();
	var pwd = $("#pwd").val();
	var code = $("#yzm").val();
	return userName == "" || pwd == "" || code == "";
}

