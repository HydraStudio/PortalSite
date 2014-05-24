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
    <link rel="stylesheet" href="css/bootstrap-select.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/templatemo_misc.css">
	

	<!-- Flat -->
	<!-- <link href="css/flat-ui.css" rel="stylesheet"> -->

	<!-- DatePicker -->
	<link href="css/datepicker3.css" rel="stylesheet">

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

		<div id="activity-news-wrapper" class="container">
			<div class="row">

				<div  class="col-md-1 col-sm-12"></div>

				<div  class="col-md-3 col-sm-12">
					
					<div id="activity-news-calender" class="col-md-3 col-sm-12 text-center">
					
							<div id="activity-news-calender-content"></div>

					</div>

					<div id="activity-news-tasklist" class="col-md-3 col-sm-12 text-center">
					
						<table>
							<thead>
							    <tr>
							        <th id="activity-day">16</th>
							       
							        <th id="activity-title" class="text-center">当日活动</th>
							    </tr>
							</thead>
							<tbody id="activity-tasklist-content">
								<tr>
									<td colspan="2">Activity 1</td>
									<td></td>
								</tr>
								<tr>
									<td colspan="2">Activity 2</td>
									<td></td>
								</tr>
								<tr>
									<td colspan="2">Activity 3</td>
									<td></td>
								</tr>
								<tr>
									<td colspan="2">Activity 4</td>
									<td></td>
								</tr>
							</tbody>
						</table>

					</div>

				</div>
				

				<div id="activity-news-overview" class="col-md-8 col-sm-12">

					<div class="activity-news-unit well col-md-5 col-sm-12" data-toggle="modal" data-target="#detailModal-1">
						<h1>活动标题</h1>
					</div>
					<!-- News Detail Model -->
					<div class="modal fade" id="detailModal-1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					        <h4 class="modal-title" id="myModalLabel">活动标题</h4>
					      </div>
					      <div class="modal-body">
					        活动内容
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-metall"  data-dismiss="modal">关闭</button>
					      </div>
					    </div><!-- /.modal-content -->
					  </div><!-- /.modal-dialog -->
					</div><!-- /.modal -->

					<div class="activity-news-unit well col-md-5 col-sm-12">
						<h1>活动标题</h1>
					</div>
					<div class="activity-news-unit well col-md-5 col-sm-12">
						<h1>活动标题</h1>
					</div>
					<div class="activity-news-unit well col-md-5 col-sm-12">
						<h1>活动标题</h1>
					</div>
					<div class="activity-news-unit well col-md-5 col-sm-12">
						<h1>活动标题</h1>
					</div>
					<div class="activity-news-unit well col-md-5 col-sm-12">
						<h1>活动标题</h1>
					</div>

				</div>

			</div>
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
    <script type="text/javascript" src="js/bootstrap-select.js"></script>
    <script src="js/customization.js"></script>
    <!-- Flat-UI Components -->
    <script src="js/flatui-checkbox.js"></script>
    <script src="js/flatui-radio.js"></script>
    <!-- Date Picker -->
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/locales/bootstrap-datepicker.zh-CN.js" charset="UTF-8"></script>

    <script type="text/javascript">

    //Data receive from server
    //Mocked
    var acts = [
			{day:4,title:'Meeting',time:'20:00',location:'Shanghai'},
			{day:6,title:'Meeting',time:'20:00',location:'Shanghai'}
			]

	//Build Calender
	$('#activity-news-calender-content').datepicker({
	    keyboardNavigation: false,
	    todayHighlight: true,
	    beforeShowDay: function (date){
	        if (date.getMonth() == (new Date()).getMonth())
	        {
	        	for(var i in acts){
	        		if(date.getDate() == acts[i]['day']){
	        			return "red";
	        		}
	        	}
		        /*switch (date.getDate()){
		          case 4:
		            return {
		              tooltip: 'Example tooltip',
		              classes: 'active'
		            };
		          case 8:
		            return false;
		          case 12:
		            return "red";
		        }*/
	        }
	    }
	});

	$('#activity-news-calender-content').datepicker().on('changeDate', function(e){
        //alert(e.date.getDate());

        //Change Activity List

        $('#activity-news-tasklist').animate({
        	opacity: 0,
        	top:'20px'}, 
  			function(){
  			//Data Manupate

  			//Show
		    $('#activity-news-tasklist').animate({
        	opacity: 1,
        	top:'0px'});
	  		
		});

    });



    </script>
    
  </body>
</html>
