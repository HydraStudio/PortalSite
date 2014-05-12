<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List</title>
</head>
<body>
	<table>
		<s:iterator value="#moduleList">
			<tr>
				<td>
					<s:property value="id"/>
				</td>
				<td>
					<s:property value="name"/>
				</td>
				<td>
					<s:a action="deleteModule?id=%{id}">删除</s:a>
				</td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>