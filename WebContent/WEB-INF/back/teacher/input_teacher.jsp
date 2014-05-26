<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/blue/pageCommon.css" />
<title>Input Order</title>

</head>
<body>
	<div>
		<%@ include file="/WEB-INF/public/back_head.jsp" %>
	</div>

<!--显示表单内容-->
<div id=MainArea>	
<div class="ItemBlockBorder">
	<s:form action="%{id==null ? 'add':'modify'}Teacher" method="post">
		<s:hidden name="id"></s:hidden>
		<s:hidden name="changeFlag" id="changeFlag"></s:hidden>
		<table cellpadding="0" cellspacing="0" class="mainForm">
			<tr>
				<td>姓名：</td>
				<td><s:textfield name="name"></s:textfield></td>
			</tr>
			<tr>
				<td>电子邮件：</td>
				<td><s:textfield name="email"></s:textfield></td>
			</tr>
			<tr>
				<td>毕业所在院校：</td>
				<td><s:textfield name="school"></s:textfield></td>
			</tr>
			<tr>
				<td>年级：</td>
				<td><s:textfield name="grade"></s:textfield></td>
			</tr>
			<tr>
				<td>专业：</td>
				<td><s:textfield name="speciality"></s:textfield></td>
			</tr>
			<tr>
				<td>手机号码：</td>
				<td><s:textfield name="phone"></s:textfield></td>
			</tr>
			<tr>
				<td>是否已工作：</td>
				<td><s:textfield name="isWork"></s:textfield><br/></td>
			</tr>
			<tr>
				<td>GPA成绩：</td>
				<td><s:textfield name="gpa"></s:textfield></td>
			</tr>
			<tr>
				<td>GRE成绩：</td>
				<td><s:textfield name="gre"></s:textfield></td>
			</tr>
			<tr>
				<td>GMAT成绩：</td>
				<td><s:textfield name="gmat"></s:textfield></td>
			</tr>
			<tr>
				<td>TOEFL成绩：</td>
				<td><s:textfield name="toefl"></s:textfield></td>
			</tr>
			<tr>
				<td>IELTS成绩：</td>
				<td><s:textfield name="ielts"></s:textfield></td>
			</tr>
			<tr>
				<td>通过何种方式知道我们：</td>
				<td><s:textfield name="wayKnowUs"></s:textfield></td>
			</tr>
			<tr>
				<td>是否接受来自METALL的NewsLetter：</td>
				<td><s:textfield name="receiveLetter"></s:textfield></td>
			</tr>
		</table>
		<div id="InputDetailBar">
        	<a href="javascript:void(0);" onclick="checkOrder()"><img src="${pageContext.request.contextPath}/style/images/save.png"/></a>
            <a href="javascript:history.go(-1);"><img src="${pageContext.request.contextPath}/style/images/goBack.png"/></a>
        </div>
	</s:form>
</div>
</div>	
</body>
</html>