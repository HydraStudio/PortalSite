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
				<td width="8%">
					姓名
				</td>
				<td width="9%">
					电子邮件
				</td>
				<td width="8%">
					毕业/所在院校
				</td>
				<td width="8%">
					年级
				</td>
				<td width="8%">
					专业
				</td>
				<td width="8%">
					手机号码
				</td>
				<td width="5%">
					是否已工作
				</td>
				<td width="5%">
					GPA成绩
				</td>
				<td width="5%">
					GRE成绩
				</td>
				<td width="5%">
					GMAT成绩
				</td>
				<td width="5%">
					TOEFL成绩
				</td>
				<td width="5%">
					IELTS成绩
				</td>
				<td width="8%">
					通过何种方式知道我们
				</td>
				<td width="5%">
					是否愿意接收NewsLetter
				</td>
				<td width="8%">
					操作
				</td>
			</tr>
		</thead>
		<tbody id="TableData" class="dataContainer">
			<s:iterator value="recordList">
				<tr class="TableDetail1 template">
					<td>${name}</td>
					<td>${email}</td>
					<td>${school}</td>
					<td>${grade}</td>
					<td>${speciality}</td>
					<td>${phone}</td>
					<s:if test="%{isWork == true}">
						<td>是</td>
					</s:if>
					<s:else>
						<td>否</td>
					</s:else>
					<td>${gpa}</td>
					<td>${gre}</td>
					<td>${gmat}</td>
					<td>${toefl}</td>
					<td>${ielts}</td>
					<td>${wayKnowUs}</td>
					<s:if test="%{receiveLetter == true}">
						<td>是</td>
					</s:if>
					<s:else>
						<td>否</td>
					</s:else>
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