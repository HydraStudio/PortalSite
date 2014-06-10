<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"> 
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加成功</title>
    <meta name="keywords" content="Teaching" />
	<meta name="description" content="Metall" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap-select.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/templatemo_misc.css">
	

	<!-- Flat -->
	<!-- <link href="css/flat-ui.css" rel="stylesheet"> -->

	<!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700,800' rel='stylesheet' type='text/css'>
    <!-- Favicons -->
    <link rel="shortcut icon" href="images/ico/favicon.ico">

	<!-- Customized CSS -->
	<link rel="stylesheet" href="css/base.css">
	<link rel="stylesheet" href="css/customization.css">
	
	<script type="text/javascript">
	
	</script>
  </head>
  
  <body>
    	<%@include file="/header.jsp" %>
    	<center style="padding-top:300px;">
    		<label id="order-prompt">预约成功！我们将在3个工作日内通过电话，短信或者邮件的方式与您联系，请保持联络通畅。</label>
		   	<form action="indexShowPortal.action">
				<input type="submit" class="join-us-form-confirm-btn" value="返回首页"></input>
			</form>
		</center>
  </body>
</html>
