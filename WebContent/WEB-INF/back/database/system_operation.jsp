<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/blue/pageCommon.css" />
<title>系统管理</title>

</head>
<body>
	<div>
		<%@ include file="/WEB-INF/public/back_head.jsp" %>
	</div>

<!--显示表单内容-->
<div id=MainArea>	
<div class="ItemBlockBorder">
	<div class="ItemBlock_Title1"><!-- 信息说明 --><div class="ItemBlock_Title1">
    	<img border="0" width="4" height="7" src="${pageContext.request.contextPath}/style/blue/images/item_point.gif" /> 数据库备份 </div> 
   </div>
	<table cellpadding="0" cellspacing="0" class="mainForm">
	<tr>
		<td><br/><a href="backupDataBase.action">点击备份</a></td>
	</tr>
    </table>
    <br/><br/><br/>
    <div class="ItemBlock_Title1"><!-- 信息说明 --><div class="ItemBlock_Title1">
    	<img border="0" width="4" height="7" src="${pageContext.request.contextPath}/style/blue/images/item_point.gif" />数据库还原 </div> 
    </div>
    
    <s:form action="restoreDataBase" theme="simple" enctype="multipart/form-data" method="post" id="form">
    	<table cellpadding="0" cellspacing="0" class="mainForm">
	    	<tr>
				<td><s:file name="upload" id="file"></s:file></td>
			</tr>
			<tr>
				<td><input type="button" value="提交" onclick="checkSqlFile()"/></td>
			</tr>
    	</table>
    </s:form>
    <br/><br/><br/>		
    <div class="ItemBlock_Title1"><!-- 信息说明 --><div class="ItemBlock_Title1">
    	<img border="0" width="4" height="7" src="${pageContext.request.contextPath}/style/blue/images/item_point.gif" />流量统计 </div> 
    </div>
	<table cellpadding="0" cellspacing="0" class="mainForm">
	<tr>
		<td>
			<script language="javascript" type="text/javascript" src="http://js.users.51.la/17059421.js"></script>
			<noscript><a href="http://www.51.la/?17059421" target="_blank"><img alt="&#x6211;&#x8981;&#x5566;&#x514D;&#x8D39;&#x7EDF;&#x8BA1;" src="http://img.users.51.la/17059421.asp" style="border:none" /></a></noscript>
		</td>
	</tr>
    </table>
</div>
</div>	
</body>
</html>