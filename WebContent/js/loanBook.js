var result = null;
$(function() {
	/*
	 * 点击确认借阅，弹出学生信息
	 */
	$("#confirmLoan").bind('click', function() {
		$("#studentWin").window('open');
	});
	//添加图书信息
	$("#append").bind('click', function() {
		appendBookRow();
	});

	//删除图书信息
	$("#delete").bind('click', function() {
		deleteBookRow();
	});
	//输入学号自动补全学生信息
	$("input", $("#studentno").next("span")).blur(function() {
		inputStudentInfo();
	});
	//确认添加
	$("#stuConfirmLoan").bind('click', function() {
		confirmBorrowing();
	});
});
/*
 * 删除选中行的数据
 */
function deleteBookRow() {
	var rows = $("#loanTable").datagrid('getSelections');
	for (var i = 0; i < rows.length; i++) {
		$("#loanTable").datagrid('deleteRow', 0);
	};

}

/*
 * 添加一行数据
 */
function appendBookRow() {
	var bookno = $("#bookno").val();
	if (bookno == null || bookno == "") {
		alert("请输入图书编号");
		return;
	};
	var rows = $("#loanTable").datagrid('getRows');
	/*
	 * 判断是否已经所输入编号是否已经存在在借阅列表中
	 */
	for (var i = 0; i < rows.length; i++) {
		var havingBookno = rows[i]['bookno'];
		if (bookno == havingBookno) {
			alert("该书已经在借阅列表中");
			return;
		};
	};

	$.post('/library/bookInfo/queryBookinfo', {
		'bookno' : bookno
	},
	/*
	 * 给表格追加行
	 */
	function(data) {
		var bookinfo = eval('(' + data + ')');
		if (bookinfo == null) {
			alert('您输入的图书编号不存在');
			return;
		}

		/*
		 * 当书的借阅状态为已借出时，显示不同的颜色
		 $('#loanTable').datagrid({
		 rowStyler : function(index, row) {
		 if (row.borrowingstatus == 1) {
		 return 'background-color:#C7C5CA;color:red;';
		 }
		 }
		 });
		 */
		if (bookinfo.borrowingstatus == 1) {
			alert("该书已经借出");
			return;
		}
		$("#loanTable").datagrid('appendRow', bookinfo);

	});
}

/*
 * 输入学号完成时，补全学生的其他信息
 */

function inputStudentInfo() {
	$("#msg").text("");
	var studentno = $("#studentno").val();
	$.post('/library/student/inputStudentInfo', {
		'studentno' : studentno
	}, function(data) {
		result = JSON.parse(data);
		if (result.msg != null) {
			$("#msg").text(result.msg);
			alert(result.msg);
		} else {
			$("#studentname").textbox('setValue', result.studentname);
			$("#borrowquantities").textbox('setValue', result.borrowquantities);
			$("#borrowedquantities").textbox('setValue', result.borrowedquantities);

		}
	});
}

/*
 * 确认借阅
 */
function confirmBorrowing() {
	var studentno = $("#studentno").val();
	//验证信息
	if ( studentno == null || studentno == "") {
		alert("请输入用户名");
		return;
	};
	if ($("#msg").text()!="") {
		alert($("#msg").text());
		return;
	};
	var bookinfos = $("#loanTable").datagrid('getSelections');
	//将选中的图书信息转化为字符串
	books = JSON.stringify(bookinfos);
	var studentname = $("#studentname").val();
	var borrowquantities = $("#borrowquantities").textbox('getValue');
	var borrowedquantities = $("#borrowedquantities").val();
	
	//数量的判断
	if(bookinfos.length == 0){
		alert("请选择要借阅的图书");
		return;
	}
	
	if(borrowquantities < bookinfos.length ){
		alert("您所借数量已超过最大可借数量！");
		return;
	};
	alert(studentno+"||"+studentname+"||"+borrowquantities+"||"+borrowedquantities);
	var json = {'books':books,'studentinfo':{'studentno':studentno,'studentname':studentname,
	'borrowquantities':borrowquantities,'borrowedquantities':borrowedquantities}};
	var con = confirm("确认借阅？");
	if (con) {
		alert("进入");
		$.ajax({
			url : '/library/borrowing/loanBook',
				type : 'POST',
				contentType : "application/json",
				data : JSON.stringify(json),
				success:function(data){
					var result = JSON.parse(data);
					if (result.msg!=null) {
						alert(result.msg);
					}else{
						alert(result.success);
					}
				}
		});
	}
}
