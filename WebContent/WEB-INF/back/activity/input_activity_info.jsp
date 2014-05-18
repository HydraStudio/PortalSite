<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/activity.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ajaxfileupload.js"></script>
<title>Input Activity</title>

</head>
<body>
	
	<s:form action="%{id==null ? 'add':'modify'}ActivityInfo" theme="simple" enctype="multipart/form-data" method="post" id="inputAction">
		<s:hidden name="id"></s:hidden>
		<s:hidden name="changeFlag" id="changeFlag"></s:hidden>
		标题：<s:textfield name="title"></s:textfield> <br/>
		封面：<s:file name="upload" onchange="changeSmallImage(this)" id="file"></s:file>
		缩略图：<img src="${imageUrl}" id="indexImage" onclick="DrawImage(this)"/><br/>
		简介：<s:textarea name="description" rows="10" cols="80"></s:textarea><br/>
		活动日期：<s:textfield name="date"></s:textfield><br/>
		详细介绍：<s:textarea name="detail" id="editor1" rows="10" cols="80"></s:textarea><br/>
		<input type="button" value="提交" onclick="checkFile()"/>
	</s:form>
	
</body>
</html>