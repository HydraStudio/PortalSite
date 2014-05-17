<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<title>Input Activity</title>
</head>
<body>
	<s:form action="%{id==null ? 'add':'modify'}ActivityInfo">
		<s:hidden name="id"></s:hidden>
		标题：<s:textfield name="title"></s:textfield>
		描述：<s:textfield name="description"></s:textfield>
		日期：<s:textfield name="date"></s:textfield>
		<s:submit value="提交"></s:submit>
	</s:form>
</body>
</html>