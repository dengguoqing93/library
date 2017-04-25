/**
 *
 */

$(function() {

	$('#submit').linkbutton({
		iconCls : 'icon-ok'
	});

	$('#reset').linkbutton({
		iconCls : 'icon-reload'
	});

	/*
	 * 重置
	 */
	$("#reset").bind('click', function() {
		$("#studentInfo").form("clear");
	});
	/*
	 $("#reset").click(function() {
	 $("#studentInfo").form("reset");
	 });*/

	/*
	 * 添加学生信息的时，输入学号，完成时进行验证，并拿取学院信息，专业信息以及班级信息
	 */

	/*
	 * 给easyui的numberbox格式添加blur事件，方法二
	 */
	$("input", $("#studentno").next("span")).blur(function() {
		var valid = $("#studentno").numberbox('isValid');
		if (!valid) {
			alert("输入的学号格式不正确");
			return false;
		} else {
			var studentno = $("#studentno").val();
			$.ajax({
				
				url : '/library/student/vertifyStudentNo',
				type : 'POST',
				contentType : "application/json",
				data : JSON.stringify({
					'studentno' : studentno
				}),
				success : function(data) {
					var json = eval("(" + data + ")");
					if (json['msg']!=null) {
						$("#msg").text(json['msg']);
						return false;
					} else {
						$("#departmentname").textbox('setValue', json["departmentName"]);
						$("#professionname").textbox('setValue', json["professionName"]);
						$("#classes").textbox('setValue', json["classno"]);
					}
				}
			});
		}
	});

	/*
	 * 登录事件
	 */
	$("#student").form({
			url : '/library/student/addStudent',
			onSubmit : function() {
				if (!$("#studentno").numberbox('isValid')) {
					alert('输入的学生编号不合理！');
					return false;
				};
				if (!$("#studentname").textbox('isValid')) {
					alert('输入的学生姓名不合法！');
					return false;
				};
				if (!$("#studentphone").numberbox('isValid')) {
					alert('输入的手机号有误！');
					return false;
				};
			},
			success : function(msg) {
				
			}
		});
	$('#submit').bind('click', function() {
		$("#student").submit();
	});

});
