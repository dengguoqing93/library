<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bookPutaway01.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/test/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/test/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/test/loginTest.css">
	<script type="text/javascript" src="<%=path %>/test/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path %>/test/jquery.easyui.min.js"></script>
	
  	<script type="text/javascript" src="<%=path %>/js/bookPutaway.js"></script>
  	<style>
		font{
			color: red;
		}
  	</style>
	<script type="text/javascript">
		
		function append() {
			$('#win').window({
			    width:600,
			    height:600,
			    closed:false,
			    collapsible:false,
			    minimizable:false,
			    maximizable:false,
			    resizable:false,
			    draggable:false,
			   
			    title:"图书上架"
			}); 
			//$('#win').window('load', 'bookPutaway.jsp');
			
		}
	</script>
  </head>
  
  <body bgcolor="#C7EDC9">
 	
	<div style="margin:20px 0;"></div>
	<div style="width: 1400px;height: 800px; position: relative;margin: 0px auto;">
		<table class="easyui-datagrid" title="图书信息管理" style="width:1350px;height:250px"
				data-options="singleSelect:true,url:'test/bookTest.json',method:'post',toolbar:'#tb'">
			<thead>
				<tr>
					<th data-options="field:'ID',width:200,align:'center'">编号</th>
					<th data-options="field:'name',width:200,align:'center'">书名</th>
					<th data-options="field:'author',width:200,align:'center'">作者</th>
					<th data-options="field:'classes',width:200,align:'center'">类别</th>
					<th data-options="field:'chubanshe',width:200,align:'center'">出版社</th>
					<th data-options="field:'years',width:200,align:'center'">出版年份</th>
					
					<th data-options="field:'count',width:148,align:'center'">数量</th>
					
				</tr>
			</thead>
		</table>
		<div id="tb" style="padding:5px;height:auto">
			<div id="tb" style="padding:5px;height:auto">
				<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="append()">上架</a>
				<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" onclick="removeit()">下架</a>
				<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" onclick="accept()">保存</a>
				
				
			</div>
			<div style="padding:5px;height:auto">
				书名:<input class="textbox" style="width: 130px;height: 23px">&nbsp;
				作者:<input class="textbox" style="width: 130px;height: 23px">&nbsp;
				出版社:<select class="easyui-combobox" panelHeight="auto" style="width:130px">
						<option value="0">请选择</option>
						<option value="1">人民教育出版社</option>
						<option value="2">高等教育出版社</option>
						<option value="3">重庆出版社</option>
						<option value="4">外语教学与研究出版社</option>
						<option value="5">商务印书馆</option>
						<option value="6">人民卫生出版社</option>
						<option value="7">科学出版社</option>
						<option value="8">知识产权出版社</option>
						<option value="9">机械工业出版社</option>
						<option value="10">北京师范大学出版社</option>
					</select>&nbsp;
				类别: 
					<select class="easyui-combobox" panelHeight="auto" style="width:130px">
						<option value="java">Java</option>
						<option value="c">C</option>
						<option value="basic">Basic</option>
						<option value="perl">Perl</option>
						<option value="python">Python</option>
					</select>&nbsp;
				出版日期: <select class="easyui-combobox" panelHeight="auto" style="width:130px">
							<option>请选择</option>
		    				<option value="2008">2008年</option>
		    				<option value="2009">2009年</option>
		    				<option value="2010">2010年</option>
		    				<option value="2011">2011年</option>
		    				<option value="2012">2012年</option>
		    				<option value="2013">2013年</option>
		    				<option value="2014">2014年</option>
		    				<option value="2015">2015年</option>
		    				<option value="2016">2016年</option>
		    				<option value="2017">2017年</option>
						</select>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#" class="easyui-linkbutton" iconCls="icon-search" style="width:80px">搜索</a>
			</div>
		</div>
	</div>
	<div id="win" class="easyui-window" data-options="closed:true" style="background-color: #CBD4D8;">
		<div style="height: 350px;width: 350px;position: relative;left: 165px;top: 70px">
			<form action="">
		  		
		    	书名:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    		<input type="text" name="bookName" id="bookName" onblur="checkName()">&nbsp;&nbsp;
		    		<font id="NameMsg"></font><br/><br/><br/>
		    	作者:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    		<input type="text" name="author" id="author" onblur="checkAu()">&nbsp;&nbsp;
		    		<font id="auMsg"></font><br/><br/><br/>
		    	类别:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    			<select>
		    				<option></option>
		    			</select><br/><br/><br/>
		    	出版社:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    			<select>
		    				<option value="0">请选择</option>
							<option value="1">人民教育出版社</option>
							<option value="2">高等教育出版社</option>
							<option value="3">重庆出版社</option>
							<option value="4">外语教学与研究出版社</option>
							<option value="5">商务印书馆</option>
							<option value="6">人民卫生出版社</option>
							<option value="7">科学出版社</option>
							<option value="8">知识产权出版社</option>
							<option value="9">机械工业出版社</option>
							<option value="10">北京师范大学出版社</option>
		    			</select><br/><br/><br/>
		    	出版年份:&nbsp;&nbsp;
		    			<select>
		    				<option>请选择</option>
		    				<option value="2008">2008年</option>
		    				<option value="2009">2009年</option>
		    				<option value="2010">2010年</option>
		    				<option value="2011">2011年</option>
		    				<option value="2012">2012年</option>
		    				<option value="2013">2013年</option>
		    				<option value="2014">2014年</option>
		    				<option value="2015">2015年</option>
		    				<option value="2016">2016年</option>
		    				<option value="2017">2017年</option>
		    			</select><br/><br/><br/>
		    	备注:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    		<textarea rows="5" cols="22" style="vertical-align: text-top;"></textarea>
		 			 &nbsp;&nbsp;
		    	<font id="coMsg"></font><br/><br/><br/><br/>
		    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    	<input type="submit" name="submit" id="submit" value="提交">
		    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    	<input type="reset" name="reset" id="reset" value="重置">
	    	</form>
    	</div>
	</div>
</body>
</html>
