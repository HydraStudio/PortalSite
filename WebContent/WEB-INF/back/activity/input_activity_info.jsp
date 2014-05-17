<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<title>Input Activity</title>
<script type="text/javascript">
	$(function(){
		CKEDITOR.replace('editor1', {
		//	filebrowserImageUploadUrl: 'myImageUpload.ashx',
			toolbar :[
			          ['Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink'],
					  ['FontSize', 'TextColor', 'BGColor'],
					  ['Image']
					],
			filebrowserUploadUrl: 'uploadFile.action'
		});
	});

	
</script>

</head>
<body>
	<s:form action="%{id==null ? 'add':'modify'}ActivityInfo">
		<s:hidden name="id"></s:hidden>
		标题：<s:textfield name="title"></s:textfield> <br/>
		描述：<s:textarea name="description" id="editor1" rows="10" cols="80"></s:textarea><br/>
		日期：<s:textfield name="date"></s:textfield><br/>
		
		<s:submit value="提交"></s:submit>
	</s:form>
</body>
</html>