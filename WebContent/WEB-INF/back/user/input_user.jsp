<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" src="${pageContext.request.contextPath}/js/pageCommon.js" charset="utf-8"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/PageUtils.js" charset="utf-8"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/common.js" charset="utf-8"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/blue/pageCommon.css" />
<title>Input User</title>
<script type="text/javascript">
function checkUser(){
	alert($("#username").val());
	if($("#username").val()== null || $.trim($("#username").val())=="" ){
		alert("用户名不能为空！");
		return;
	}else if($("#password").val()== null || $.trim($("#password").val())=="" ){
		alert("密码不能为空！");
		return
	}else{
		$("#form").submit();
	}
}
</script>
</head>
<body>

<div>
		<%@ include file="/WEB-INF/public/back_head.jsp" %>
	</div>

<!--显示表单内容-->
<div id=MainArea>	
<div class="ItemBlockBorder">
	<s:form action="%{id==null ? 'add':'modify'}User" id="form">
		<s:hidden name="id"></s:hidden>
		<table cellpadding="0" cellspacing="0" class="mainForm">
			<tr>
				<td>用户名：</td>
				<td><s:textfield name="username" id="username"></s:textfield></td>
			</tr>
			<tr>
				<td>密     码： </td>
				<td><s:textfield name="password" id="password"></s:textfield></td>
			</tr>
		</table>
		<div id="InputDetailBar">
        	<a href="javascript:void(0);" onclick="checkUser()"><img src="${pageContext.request.contextPath}/style/images/save.png"/></a>
            <a href="javascript:history.go(-1);"><img src="${pageContext.request.contextPath}/style/images/goBack.png"/></a>
        </div>
	</s:form>
</div>
</div>
</body>
</html>