/**
 * 
 */

function appendBookRow () {
	var bookno = $("#bookno").val();
	if (bookno == null||bookno =="") {
		alert("请输入图示编号");
	};
	var rows = $("#loanTable").datagrid('getRows');
	/*
	 * 判断是否已经所输入编号是否已经存在在借阅列表中
	 */
	for (var i=0; i < rows.length; i++) {
	  var havingBookno = rows[i]['bookno'];
	  if (bookno == havingBookno) {
	  	alert("该书已经在借阅列表中");
	  	return;
	  };
	};
	
	$.post(
		'url',
		{bookno:bookno},
		/*
		 * 给表格追加行
		 */
		function(data){
			$("#loanTable").datagrid('appendRow',data);
		}
	);
}

/*
 * 点击确认借阅，弹出学生信息
 */
function borrowInfo () {
  $("#studentWin").window('open');
}

/*
 * 学生信息窗口的确认借阅函数
 */

function confirmBorrow () {
  var borrowCount = $('#borrowCount').val();
  if(borrowCount < )
  var studentNo = $('#studentno').val();
}