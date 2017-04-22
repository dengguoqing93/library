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


