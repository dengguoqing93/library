$(function() {
	$('#studentInfo').datagrid({
		rownumbers : true,
		view : detailview,
		detailFormatter : function(index, row) {
			return '<div style="padding:2px"><table class="ddv"></table></div>';
		},
		onExpandRow : function(index, row) {
			var ddv = $(this).datagrid('getRowDetail', index).find('table.ddv');
			ddv.datagrid({
				fitColumns : true,
				singleSelect : true,
				rownumbers : true,
				loadMsg : '',
				height : 'auto',
				columns : [[
				{
					field:'cx',
					checkbox:'true'
				},
				{
					field : 'bookno',
					title : '图书编号',
					width : 100
				}, {
					field : 'bookname',
					title : '图书名称',
					width : 100
				}, {
					field : 'author',
					title : '图书作者',
					width : 100
				}, {
					field : 'borroweddate',
					title : '借阅日期',
					width : 100
				}, {
					field : 'shouldreturndate',
					title : '应还日期',
					width : 100
				}]],
				onResize : function() {
					$('#studentInfo').datagrid('fixDetailRowHeight', index);
				},
				onLoadSuccess : function() {
					setTimeout(function() {
						$('#studentInfo').datagrid('fixDetailRowHeight', index);
					}, 0);
				}
			});
			$('#studentInfo').datagrid('fixDetailRowHeight', index);
			$.ajax({
				url : '/library/student/selectBorrowingByStudentno',
				type : 'post',
				//contentType:'application/json',
				//data:JSON.stringify({'studentno':$('#studentno').val()}),
				data : {
					'studentno' : row.studentno
				},
				success : function(result) {
					ddv.datagrid('loadData',eval('('+result+')'));
				}
			});
		}
	});
	/*
	 * 点击搜索
	 */
	$("#search").bind('click', function() {
		$.ajax({
			url : '/library/student/selectStudent',
			type : 'post',
			//contentType:'application/json',
			//data:JSON.stringify({'studentno':$('#studentno').val()}),
			data : {
				'studentno' : $('#studentno').val()
			},
			success : function(result) {
				var result = eval('(' + result + ')');
				if (result.msg != null) {
					alert(result.msg);
				} else {
					$("#studentInfo").datagrid("loadData", result);
				}
			}
		});
	});

});
