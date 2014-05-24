<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/pageCommon.js" charset="utf-8"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/PageUtils.js" charset="utf-8"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/common.js" charset="utf-8"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/blue/pageCommon.css" />
<title>Add Activity To Index</title>

</head>
<body>
	<div>
		<%@ include file="/WEB-INF/public/back_head.jsp" %>
	</div>
	
<div id=MainArea>	
<div class="ItemBlockBorder">	
	<s:form action="addPortal" theme="simple" enctype="multipart/form-data" method="post" id="inputAction">
		<s:hidden name="activityId" value="%{id}"></s:hidden>
		<s:hidden name="changeFlag" id="changeFlag"></s:hidden>
		<table cellpadding="0" cellspacing="0" class="mainForm">
			<tr>
				<td>图片：</td>
				<td><s:file name="upload" id="file"></s:file></td>
			</tr>
			<tr>
				<td>图片名字：</td>
				<td><s:textfield name="name"></s:textfield></td>
			</tr>
			<tr>
				<td>主标题：</td>
				<td><s:textfield name="title"></s:textfield></td>
			</tr>
			<tr>
				<td>副标题：</td>
				<td><s:textfield name="subTitle"></s:textfield></td>
			</tr>
		</table>
		<div id="InputDetailBar">
			<a href="javascript:void(0);"  onclick="checkFile()"><img src="${pageContext.request.contextPath}/style/images/save.png"/></a>
            <a href="javascript:history.go(-1);"><img src="${pageContext.request.contextPath}/style/images/goBack.png"/></a>
        </div>
	</s:form>
</div>
</div>	
	
</body>
</html>