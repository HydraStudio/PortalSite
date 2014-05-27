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
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/blue/pageCommon.css" />
<title>加入我们界面管理</title>
</head>
<body>

	<div>
		<%@ include file="/WEB-INF/public/back_head.jsp" %>
	</div>
	<table cellspacing="0" cellpadding="0" class="TableStyle">
		<thead>
			<tr align=center valign=middle id=TableTitle>
				<td width="20%">
					ID
				</td>
				<td width="20%">
					图片名字
				</td>
				<td width="30%">
					图片地址
				</td>
				<td width="30%">
					操作
				</td>
			</tr>
		</thead>
		<tbody id="TableData" class="dataContainer">
			<s:iterator value="recordList">
				<tr class="TableDetail1 template">
					<td>${id}</td>
					<td><s:a href="%{imageUrl}">${imageName}</s:a></td>
					<td>${imageUrl}</td>
					<td>
						<s:a action="modifyInputJoinUs?id=%{id}">修改</s:a>
						<s:a action="deleteJoinUs?id=%{id}">删除</s:a>
					</td>
				</tr>
			</s:iterator>
	</table>
	<div id="TableTail">
        <div id="TableTail_inside">
            <a href="addInputJoinUs.action"><img src="${pageContext.request.contextPath}/style/images/createNew.png" /></a>
        </div>
    </div>
	<div align="center">
		<%@ include file="/WEB-INF/public/pageView.jsp" %>
		<s:form action="listJoinUs"></s:form>
	</div>
	
</body>
</html>