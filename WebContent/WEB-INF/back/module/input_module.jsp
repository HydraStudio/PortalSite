<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Input Module</title>
</head>
<body>
	<s:form action="%{id==null ? 'add':'modify'}Module">
		<s:hidden name="id"></s:hidden>
		模块名：<s:textfield name="name"></s:textfield>
		模块URL：<s:textfield name="moduleUrl"></s:textfield>
		<s:submit value="提交"></s:submit>
	</s:form>
</body>
</html>