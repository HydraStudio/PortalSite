<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<title>List Order</title>
</head>
<body>
	<table style="border:1px red solid;" align="center">
		<tr>
			<th>
				姓名
			</th>
			<th>
				电子邮件
			</th>
			<th>
				毕业/所在院校
			</th>
			<th>
				年级
			</th>
			<th>
				专业
			</th>
			<th>
				手机号码
			</th>
			<th>
				是否已工作
			</th>
			<th>
				GPA成绩
			</th>
			<th>
				GRE成绩
			</th>
			<th>
				GMAT成绩
			</th>
			<th>
				TOEFL成绩
			</th>
			<th>
				IELTS成绩
			</th>
			<th>
				通过何种方式知道我们
			</th>
			<th>
				是否愿意接收NewsLetter
			</th>
		</tr>
		<s:iterator value="recordList">
			<tr>
				<td>${name}</td>
				<td>${email}</td>
				<td>${school}</td>
				<td>${grade}</td>
				<td>${speciality}</td>
				<td>${phone}</td>
				<td>${isWork}</td>
				<td>${gpa}</td>
				<td>${gre}</td>
				<td>${gmat}</td>
				<td>${toefl}</td>
				<td>${ielts}</td>
				<td>${wayKnowUs}</td>
				<td>${receiveLetter}</td>
				<td>
					<s:a action="modifyInputOrder?id=%{id}">修改</s:a>
					<s:a action="deleteOrder?id=%{id}">删除</s:a>
				</td>
			</tr>
		</s:iterator>
	</table>
	
	<br/><br/><br/>
	<div align="center">
		<%@ include file="/WEB-INF/public/pageView.jsp" %>
		<s:form action="listOrder"></s:form>
		<s:a action="addInputOrder">添加</s:a> <br/><br/><br/>
	</div>
	
</body>
</html>