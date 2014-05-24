<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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


</head>
  
  <body>

  	<%@include file="/header.jsp" %>

	<div class="site-content">
	    <div class="blank"></div>
	    <div class=""></div>
		<div id="photo-galary-wrapper" class="container">
			<!-- <div class="col-md-1"></div> -->
			<div id="activity-news-dashboard" class="col-md-4">
				<s:iterator value="portals" status="u">
				<div id="activity-news-dashboard-${u.index}" style="display:none">
					<h1 onclick="openPage('#')">${title}</h1><br/>
					<h3>${subTitle}</h3>
				</div>
				</s:iterator>
			</div>
			<div id="photo-galary" class="col-md-12 col-sm-12">
				<div id="index-carousel" class="carousel slide" data-ride="carousel" data-interval="3000">
				  <!-- Indicators -->
				  <ol class="carousel-indicators">
				    <li data-target="#index-carousel" data-slide-to="0" class="active"></li>
				    <li data-target="#index-carousel" data-slide-to="1"></li>
				    <li data-target="#index-carousel" data-slide-to="2"></li>
				  </ol>

				  <!-- Wrapper for slides -->
				  <div class="carousel-inner">
				  	<s:iterator value="portals" status="u">
						<div class="item">
					      <img src="${imageUrl}" alt="...">
					    </div>
					</s:iterator>
				    <!-- <div class="item">
				      <img src="./images/index_01.jpg" alt="...">
				      <div class="carousel-caption">
				        Test Picture
				      </div>
				    </div>
				    <div class="item">
				      <img src="./images/index_01.jpg" alt="...">
				    </div> -->
				  </div>

				  <!-- Controls -->
				  <a class="left carousel-control" href="#index-carousel" data-slide="prev">
				    <span class="glyphicon glyphicon-chevron-left"></span>
				  </a>
				  <a class="right carousel-control" href="#index-carousel" data-slide="next">
				    <span class="glyphicon glyphicon-chevron-right"></span>
				  </a>
				</div>
			</div>
			<div id="activity-service" class="col-md-1">
				<h1>&nbsp;</h1><br/>
			</div>
		</div>

		<div id="course-service"></div>
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

    <script type="text/javascript">
    	function openPage(html){
		  alert("click");
		  window.open(html,'_self');
		}
		

		//Make photo&news active
		$(function(){
			$($(".carousel-inner .item")[0]).addClass("active");
			$($("#activity-news-dashboard div")[0]).addClass("active");
			$($("#activity-news-dashboard div")[0]).show("slow");
		});

    </script>
    <!-- Flat-UI Components -->
    <script src="js/flatui-checkbox.js"></script>
    <script src="js/flatui-radio.js"></script>
    
  </body>
</html>
