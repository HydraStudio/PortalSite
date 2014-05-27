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

<title>List Activity</title>
</head>
<body>
	<div>
		<%@ include file="/WEB-INF/public/back_head.jsp" %>
	</div>
	<table cellspacing="0" cellpadding="0" class="TableStyle">
		<thead>
			<tr align=center valign=middle id=TableTitle>
				<td width="10%" align="center">
					ID
				</td>
				<td width="15%">
					标题
				</td>
				<td width="30%">
					活动简介
				</td>
				<td width="15%" align="center">
					活动日期
				</td>
				<td width="15%" align="center">
					活动地点
				</td>
				<td width="15%" align="center">
					操作
				</td>
			</tr>
		<thead>
		<tbody id="TableData" class="dataContainer">
			<s:iterator value="recordList">
				<tr class="TableDetail1 template">
					<td>
						${id}
					</td>
					<td>
						${title}
					</td>
					<td>
						${description}
					</td>
					<td>
						<s:date name="date" format="yyyy-MM-dd HH:mm:ss"/>
					</td>
					<td>
						${location}
					</td>
					<td>
						<s:a action="modifyInputActivityInfo?id=%{id}">修改</s:a>
						<s:a action="addToIndexInputActivityInfo?id=%{id}">添加到首页</s:a>
						<s:a action="deleteActivityInfo?id=%{id}" id="delete" onclick="confirmDel()">删除</s:a>
					</td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
	<div id="TableTail">
        <div id="TableTail_inside">
            <a href="addInputActivityInfo.action"><img src="${pageContext.request.contextPath}/style/images/createNew.png" /></a>
        </div>
    </div>
	<div>
		<%@ include file="/WEB-INF/public/pageView.jsp" %>
		<s:form action="listActivityInfo"></s:form>
	</div>
	
</body>
</html>