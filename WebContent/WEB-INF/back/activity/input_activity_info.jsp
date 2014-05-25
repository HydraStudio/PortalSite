<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-ui-1.10.3.custom.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery.ui.datepicker-zh-CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/activity.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ajaxfileupload.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/pageCommon.js" charset="utf-8"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/PageUtils.js" charset="utf-8"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/common.js" charset="utf-8"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/blue/pageCommon.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/blue/jquery-ui-1.10.3.custom.css" />
<title>Input Activity</title>

</head>
<body>

	<div>
		<%@ include file="/WEB-INF/public/back_head.jsp" %>
	</div>

<!--显示表单内容-->
<div id=MainArea>	
<div class="ItemBlockBorder">
	<s:form action="%{id==null ? 'add':'modify'}ActivityInfo" theme="simple" enctype="multipart/form-data" method="post" id="inputAction">
		<s:hidden name="id" id="id"></s:hidden>
		<s:hidden name="changeFlag" id="changeFlag"></s:hidden>
		<table cellpadding="0" cellspacing="0" class="mainForm">
			<tr>
				<td>标题：</td>
				<td><s:textfield name="title"></s:textfield> </td>
			</tr>
			<tr>
				<td>封面：</td>
				<td><s:file name="upload" onchange="changeSmallImage(this)" id="file"></s:file></td>
			</tr>
			<tr>
				<td>缩略图：</td>
				<td><img src="${imageUrl}" id="indexImage" onclick="DrawImage(this)"/></td>
			</tr>
			<tr>
				<td>简介：</td>
				<td><s:textarea name="description" rows="10" cols="80" ></s:textarea></td>
			</tr>
			<tr>
				<td>活动日期：</td>
				<s:if test="%{id==nulll}">
					<td><s:textfield name="date" id="date"></s:textfield></td>
				</s:if>
				<s:else>
					<td><input type="text" name="date" id="date" value='<s:date name="date" format="yyyy-MM-dd HH:mm:ss"></s:date>' /></td>
				</s:else>
			</tr>
			<tr>
				<td>活动地点：</td>
				<td><s:textfield name="location"></s:textfield></td>
			</tr>
			<tr>
				<td>详细介绍：</td>
				<td><s:textarea name="detail" id="editor1" rows="10" cols="80"></s:textarea></td>
			</tr>
		</table>
		 <!-- 表单操作 -->
        <div  id="InputDetailBar">
        	<a href="javascript:void(0);"  onclick="checkFile()"><img src="${pageContext.request.contextPath}/style/images/save.png"/></a>
            <a href="javascript:history.go(-1);"><img src="${pageContext.request.contextPath}/style/images/goBack.png"/></a>
        </div>
	</s:form>
	</div>
</div>	
</body>
</html>