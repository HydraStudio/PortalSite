<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"> 
<html>
  <head>
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
				    <s:iterator value="portals" status="u">
				    	<li data-target="#index-carousel" data-slide-to="${u.index}"></li>
					</s:iterator>
				  </ol>

				  <!-- Wrapper for slides -->
				  <div class="carousel-inner">
				  	<s:iterator value="portals" status="u">
						<div class="item">
					      <!-- <img src="${imageUrl}" alt="..."  onclick="window.open('${url}','_blank')" > -->
					      <img src="${imageUrl}" data-link="${url}" data-toggle="modal" data-target="#detailModal-${u.index}" >
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
		</div>

		<div class="blank-down"></div>
		<div class="blank-down"></div>
		<div class="blank-down"></div>
		<div id="activity-service" class="col-md-1"  onclick="window.location.href='indexAddInputOrder.action'">
			<h1>&nbsp;</h1><br/>
		</div>

		<!-- News Detail Model -->
		<s:iterator value="portals" status="u">
			<div class="modal fade" id="detailModal-${u.index}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			    <div class="modal-dialog" style="width:800px;">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				        <h4 class="modal-title" id="myModalLabel-${u.index}"></h4>
				      </div>
				      <div class="modal-body" id="myModalDetail-${u.index}">
				        
				      </div>
				      <div class="modal-footer">
				      	<!-- JiaThis Button BEGIN -->
					    <div id="ckepop">
							<%-- <span class="jiathis_txt">分享到：</span>
							<a class="jiathis_button_weixin">微信</a> 
							<a href="http://www.jiathis.com/share"  class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis" target="_blank">更多</a>
							<a class="jiathis_counter_style"></a> 
							<script type="text/javascript" src="http://v3.jiathis.com/code/jia.js?uid=1" charset="utf-8"></script> --%>
						</div> <!-- JiaThis Button END -->
				       <!--  <button type="button" class="btn btn-metall"  data-dismiss="modal">关闭</button> -->
				      </div>
				    </div><!-- /.modal-content -->
				</div><!-- /.modal-dialog -->
			</div><!-- /.modal -->
		</s:iterator>

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
    <script type="text/javascript">
		//Make photo&news active
		$(function(){
			$($(".carousel-indicators li")[0]).addClass("active");
			$($(".carousel-inner .item")[0]).addClass("active");
			$($("#activity-news-dashboard div")[0]).addClass("active");
			$($("#activity-news-dashboard div")[0]).show("slow");
		});


		/* $('.icon-wechat').popover({
			placement: "top",
			trigger: "hover",
			html:true,
			content:"<img style='width:200px;' src='images/weixin.png'>"
		}); */
		
		//Ajax Get Activity
		var imgs = $("#index-carousel .carousel-inner img");
		for(var i=0;i<imgs.length;i++){
			var dataAddr = $(imgs[i]).attr("data-link");
			if(dataAddr && dataAddr!=""){
				var myRequest = new XMLHttpRequest();; 
				myRequest.open("GET",dataAddr,false); 
				myRequest.setRequestHeader("Content-Type","text/html;charset=UTF-8" );
				myRequest.send(null); 
				var res=myRequest.responseText;//接收返回的数据 
			//	var dataObj = eval("("+res+")");
				var splitPls = res.indexOf("_");
				var myTitle = res.substring(0,splitPls);
				var myDetail = res.substring(splitPls+1,res.length);
				//res = split("_");
				$("#myModalLabel-"+i).html(myTitle);
				$("#myModalDetail-"+i).html(myDetail); 
			
				/* $.get(dataAddr,function(data){
					var dataObj = eval("("+data+")");
					//Push Data
					$("#myModalLabel-"+i).html(dataObj['title']);
					$("#myModalDetail-"+i).html(dataObj['detail']);
				}); */
			}else{
				$("#detailModal-"+i).remove();
			}
		} 

    </script>
    <!-- Flat-UI Components -->
    <script src="js/flatui-checkbox.js"></script>
    <script src="js/flatui-radio.js"></script>

  </body>
</html>
