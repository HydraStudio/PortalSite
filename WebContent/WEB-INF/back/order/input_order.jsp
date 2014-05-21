<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<title>Input Order</title>

</head>
<body>
	
	<s:form action="%{id==null ? 'add':'modify'}Order" method="post">
		<s:hidden name="id"></s:hidden>
		<s:hidden name="changeFlag" id="changeFlag"></s:hidden>
		姓名：<s:textfield name="name"></s:textfield> <br/>
		电子邮件：<s:textfield name="email"></s:textfield> <br/>
		毕业所在院校：<s:textfield name="school"></s:textfield> <br/>
		年级：<s:textfield name="grade"></s:textfield> <br/>
		专业：<s:textfield name="speciality"></s:textfield><br/>
		手机号码：<s:textfield name="phone"></s:textfield> <br/>
		是否已工作：<s:textfield name="isWork"></s:textfield><br/>
		GPA成绩：<s:textfield name="gpa"></s:textfield><br/>
		GRE成绩：<s:textfield name="gre"></s:textfield><br/>
		GMAT成绩：<s:textfield name="gmat"></s:textfield><br/>
		TOEFL成绩：<s:textfield name="toefl"></s:textfield><br/>
		IELTS成绩：<s:textfield name="ielts"></s:textfield><br/>
		通过何种方式知道我们：<s:textfield name="wayKnowUs"></s:textfield><br/>
		我愿意接受来自METALL的NewsLetter：<s:textfield name="receiveLetter"></s:textfield><br/>
		<s:submit value="提交"></s:submit>
	</s:form>
	
</body>
</html>