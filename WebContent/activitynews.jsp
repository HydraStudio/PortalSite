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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
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
								<!-- <tr>
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
								</tr> -->
							</tbody>
						</table>

					</div>

				</div>
				

				<div id="activity-news-overview" class="col-md-8 col-sm-12">

					<s:iterator value="activities" status="u">
				    	<!-- <li data-target="#index-carousel" data-slide-to="${u.index}"></li> -->
				    	<div class="activity-news-unit well col-md-5 col-sm-12" data-toggle="modal" data-target="#detailModal-${u.index}">
						<h1>${title}</h1><br/>
						<div class="row">
							<div class='col-md-6'><img src="images/img_activity.png"/></div>
							<div class='col-md-6'><p class="text-left" style="text-overflow:ellipsis;">软件架构平台创新大会，是由普元、InfoQ联合主办的全国顶级技术盛会</p></div><!--30字-->
						</div>
						<!-- News Detail Model -->
						<div class="modal fade" id="detailModal-${u.index}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						        <h4 class="modal-title" id="myModalLabel-${u.index}">${title}</h4>
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
					</div>
					</s:iterator>

				</div>

			</div>
		</div>

	</div><!-- site-content -->
	
	<%@include file="/footer.jsp" %>
	
	<!-- JiaThis Button BEGIN -->
    <div id="ckepop">
		<span class="jiathis_txt">分享到：</span>
		<a class="jiathis_button_weixin">微信</a> 
		<a href="http://www.jiathis.com/share"  class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis" target="_blank">更多</a>
		<a class="jiathis_counter_style"></a> 
		<script type="text/javascript" src="http://v3.jiathis.com/code/jia.js?uid=1" charset="utf-8"></script>
	</div> <!-- JiaThis Button END -->
	
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
    var monthActs = [
			{day:4,activities:[{title:'交流会议',time:'15:00',location:'Beijing'},{title:'Meeting',time:'15:00',location:'Beijing'}]},
			{day:6,activities:[{title:'宣讲会',time:'20:00',location:'上海'}]}
		]

	var today = new Date();
	var todayMonth = today.getMonth()+1;
	if(todayMonth<10){
		todayMonth = "0"+todayMonth;
	}
	var todayString = today.getFullYear()+"-"+todayMonth+"-"+today.getDate();
	//alert(todayString);

	//Retrieve act data
	$.ajax({
		  url: "indexGetMonthActivityInfo.action",
		  data: "year="+today.getFullYear()+"&month="+todayMonth,
		  async : false,
		  success: function(data){
		    monthActs = eval("("+data+")");
		    //monthActs = eval("("+"{'day':1,'activities':[]}"+")");
		  }
	});

	/*var myRequest = new XMLHttpRequest();
	var get= "year="+today.getFullYear()+"&month="+(today.getMonth()+1); 
	alert(get);
	myRequest.open("GET","indexGetMonthActivityInfo.action?"+get,false); 
	//myRequest.setRequestHeader("contentLength",post.length); 
	myRequest.setRequestHeader("Content-Type","text/html;charset=UTF-8" );
	myRequest.send(null); 
	var res=myRequest.responseText;//接收返回的数据 
	alert(res);*/

	//Build Calender
	$('#activity-news-calender-content').datepicker({
	    keyboardNavigation: false,
	    todayHighlight: true,
	    beforeShowDay: function (date){
	        if (date.getMonth() == (new Date()).getMonth())
	        {
	        	for(var i in monthActs){
	        		if(date.getDate() == monthActs[i]['day']){
	        			if(monthActs[i]['activities'].length>0){
		        			return "red";
	        			}
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

        //Change Activitt Date
        $('#activity-day').html(e.date.getDate());

        //Change Activity List
        $('#activity-news-tasklist').animate({
        	opacity: 0,
        	top:'20px'}, 
  			function(){
	  			//Data Manupate
	  			$('#activity-tasklist-content').empty();

	  			//Check if activities exist
	  			for(var i in monthActs){
	  				if(e.date.getDate() == monthActs[i]['day']){
	        			for(var j in monthActs[i]['activities']){
	        				//Load the activities
	  						$('#activity-tasklist-content').append(
	  							'<tr style="cursor:pointer"><td>'+
	  							monthActs[i]['activities'][j]['title']+"<br/>"+
	  							monthActs[i]['activities'][j]['location']+
	  							'</td><td style="text-align:right;padding-right:15px;">'+
	  							monthActs[i]['activities'][j]['time']+
	  							'</td></tr>');
	  					}
	        		}
	  			}

	  			//Show
			    $('#activity-news-tasklist').animate({
	        	opacity: 1,
	        	top:'0px'});
		});

    });



    </script>
    <div style="display:none;">
		<script language="javascript" type="text/javascript" src="http://js.users.51.la/17059421.js"></script>
		<noscript><a href="http://www.51.la/?17059421" target="_blank"><img alt="&#x6211;&#x8981;&#x5566;&#x514D;&#x8D39;&#x7EDF;&#x8BA1;" src="http://img.users.51.la/17059421.asp" style="border:none" /></a></noscript>
	</div>
  </body>
</html>
