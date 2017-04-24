/**
 * 
 */

$(function(){
	/*
	 * 添加学生信息的时，输入学号，完成时进行验证，并拿取学院信息，专业信息以及班级信息
	 */
	/*
	 * 给easyui的numberbox格式添加blur事件，方法一
	 */
	/*
	$("#studentno").next("span").children().first().blur(function(){
				alert("hello");
		});*/
	/*
	 * 给easyui的numberbox格式添加blur事件，方法二
	 */
	$("input",$("#studentno").next("span")).blur(function(){
           var valid = $("#studentno").numberbox('isValid');
           if(!valid){
           	  alert("输入的学号格式不正确");
           	  return false;
           }else{
           		var studentno = $("#studentno").val();
           		$.ajax({
				url:'/library/admin/vertifyAdminName',
				type:'POST',
				contentType: "application/json", 
				data: JSON.stringify({ 'studentno': studentno}),
				success:function(data){
					$("#msg").text(data);
			}
		});
           }
	});
});
