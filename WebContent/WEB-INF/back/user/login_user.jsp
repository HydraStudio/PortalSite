<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Input User</title>
</head>
<body>
	<s:form action="loginUser" method="post">
		<font color="red"><s:fielderror/></font>
		用户名：<s:textfield name="username"></s:textfield>
		密     码： <s:textfield name="password"></s:textfield>
		<s:submit value="提交"></s:submit>
	</s:form>
</body>
</html>