<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<title>List</title>
</head>
<body>
	<table align="center">
		<s:iterator value="recordList">
			<tr>
				<td>
					<s:a action="%{moduleUrl}">${name}</s:a>
				</td>
				<!--  
				<td>
					<s:a action="modifyInputModule?id=%{id}">修改</s:a>
					<s:a action="deleteModule?id=%{id}">删除</s:a>
				</td>
				-->
			</tr>
		</s:iterator>
	</table>
<!--  	-->	
<br/>
	<center>
		<s:a action="addInputModule">添加</s:a> <br/><br/><br/>
	</center>
	<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=155471638&amp;site=qq&amp;menu=yes" class="guide_link" title="欢迎在线咨询“QQ推广客服”，在线时间为工作日9点-17点。" target="_blank" data-report="12058">&gt;&gt; QQ在线咨询</a>
	
	<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=155471638&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:136254674:51" alt="联系我" title="联系我"/></a>
	
</body>
</html>