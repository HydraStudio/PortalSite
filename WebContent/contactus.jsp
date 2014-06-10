<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"> 
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
    <!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700,800' rel='stylesheet' type='text/css'> -->
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

	<div class="site-content">

		<div class="container site-content-wrapper">
			<div class="row">
				
				<div class="col-md-6">
					
					<div id="contact-information-block">
						<div id="phone-block">
							<i class="fa fa-phone"></i>
							<span>（912）555-1234</span>
						</div>
						<div id="location-block">
							<i class="fa fa-home"></i>
							<span>1600 Pennsylvania Ave NW, Washington</span>
						</div>
						<div id="mail-block">
							<i class="fa fa-envelope"></i>
							<span>hello@website.com</span>
						</div>
					</div>

				</div>
				<div class="col-md-6">
					<img src="images/contact_us.png">
				</div>

			</div>
		</div>

		<!-- Reserve Box-->
		<div id="activity-service" class="col-md-1"  onclick="window.open('indexAddInputOrder.action','_blank')">
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
