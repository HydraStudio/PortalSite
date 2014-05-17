<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<title>List Activity</title>
</head>
<body>
	<table>
		<s:iterator value="recordList">
			<tr>
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
					${date}
				</td>
				<td>
					<s:a action="modifyInputActivityInfo?id=%{id}">修改</s:a>
					<s:a action="deleteActivityInfo?id=%{id}">删除</s:a>
				</td>
			</tr>
		</s:iterator>
	</table>
	
	<br/><br/><br/>
	<%@ include file="/WEB-INF/public/pageView.jsp" %>
	<s:form action="listActivityInfo"></s:form>

	<s:a action="addInputActivityInfo">添加</s:a> <br/><br/><br/>
</body>
</html>