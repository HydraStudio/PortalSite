<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  	<base href="<%=basePath%>">
	<title>Metall</title>
    <meta name="keywords" content="Teaching" />
	<meta name="description" content="Metall" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/templatemo_misc.css">

	<!-- Flat -->
	<link href="css/flat-ui.css" rel="stylesheet">

	<!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700,800' rel='stylesheet' type='text/css'>
    <!-- Favicons -->
    <link rel="shortcut icon" href="images/ico/favicon.ico">

	<!-- Customized CSS -->
	<link rel="stylesheet" href="css/base.css">
	<link rel="stylesheet" href="css/customization.css">

	<style type="text/css">

.site-content{
  #background-image: url('');
}

	</style>

</head>
  
  <body>

  	<%@include file="/header.jsp" %>

	<div class="site-content" id="join-us-mail">
	    <div class=""></div>
		<div id="join-us-form-wrapper" class="container">
			<!-- <div class="col-md-1"></div> -->
			<div id="join-us-form-text">
				<h2>致XXX的一封信</h2><br/>
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</p>
			</div>
			<div id="join-us-form-welcome">
				<h2>Wait for your coming!</h2>
			</div>
			<div id="join-us-form-join">
				<h2 style="color:#68CD9A">想要成为METALL的一员？</h2><br/>
				<div id="mail-block">
					<i class="fa fa-envelope"></i>
					<span>hello@website.com</span>
				</div>
			</div>
			<div id="join-mail-photo"></div>
		</div>

		<div id="activity-service" class="col-md-1" onclick="window.open('joinus.html','_blank')">
			<h1>&nbsp;</h1><br/>
		</div>
	</div><!-- site-content -->
	
	<%@include file="/footer.jsp" %>
	
	<!-- Scripts -->
	<script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/modernizr.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/tabs.js"></script>
	<script src="js/jquery.lightbox.js"></script>
	<script src="js/templatemo_custom.js"></script>
    <script type='text/javascript' src='js/logging.js'></script>
    <script src="js/customization.js"></script>
    <!-- Flat-UI Components -->
    <script src="js/flatui-checkbox.js"></script>
    <script src="js/flatui-radio.js"></script>
    
  </body>
</html>
