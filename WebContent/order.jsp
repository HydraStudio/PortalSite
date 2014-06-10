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
    <link rel="stylesheet" href="css/bootstrap-select.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/templatemo_misc.css">
	

	<!-- Flat -->
	<!-- <link href="css/flat-ui.css" rel="stylesheet"> -->

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
		<div id="join-us-form-wrapper" class="container">
			<!-- <div class="col-md-1"></div> -->

			<form id="join-us-form" class="col-md-12 col-sm-12" action="indexAddOrder.action" method="post">
				<div id="join-us-form-content" >
					<div class="row" >
					  <div class="col-md-1">&nbsp;</div>

				      <div class="col-md-5">
				          <div class="form-group join-us-form-unit">
				          	<fieldset>
							    <label for="inputName" class="col-md-4 control-label">姓名<span style="color:red">*</span></label>
							    <div class="col-md-8">
							      <input required type="text" name="name" class="form-control" id="inputName" placeholder="">
							    </div>
						    </fieldset>
						  </div>
						  <div class="form-group join-us-form-unit">
						  	<fieldset>
							    <label for="inputEmail" class="col-md-4 control-label">电子邮件<span style="color:red">*</span></label>
							    <div class="col-sm-8">
							      <input required type="email" name="email" class="form-control" id="inputEmail" placeholder="">
							    </div>
						    </fieldset>
						  </div>
						  <div class="form-group join-us-form-unit">
						  	<fieldset>
							    <label for="inputGraduate" class="col-md-4 control-label">毕业/所在院校</label>
							    <div class="col-sm-8">
							      <input type="text" name="school" class="form-control" id="inputGraduate" placeholder="">
							    </div>
						    </fieldset>
						  </div>
						  <div class="form-group join-us-form-unit">
						  	<fieldset>
							    <label for="inputGrade" class="col-md-4 control-label">年级</label>
							    <div class="col-sm-8">
							      <input type="text" name="grade" class="form-control" id="inputGrade" placeholder="">
							    </div>
						    </fieldset>
						  </div>
						  <div class="form-group join-us-form-unit">
						  	<fieldset>
							    <label for="inputMajor" class="col-md-4 control-label">专业</label>
							    <div class="col-sm-8">
							      <input type="text" name="speciality" class="form-control" id="inputMajor" placeholder="">
							    </div>
						    </fieldset>
						  </div>
						  <div class="form-group join-us-form-unit">
						  	<fieldset>
							    <label for="inputTelephone" class="col-md-4 control-label">手机号码<span style="color:red">*</span></label>
							    <div class="col-sm-8">
							      <input required type="text" name="phone" class="form-control" id="inputTelephone" placeholder="">
							    </div>
						    </fieldset>
						  </div>
				      </div>

				      <div class="col-md-5">

				        <div class="form-group join-us-form-unit">
				          	<fieldset>
							    <label for="selectWorked" class="col-md-4 control-label">是否已工作</label>
							    <div class="col-md-8">
							        <select name="isWork" class="selectpicker text-left" id="selectWorked">
								        <option value="1">是</option>
									    <option value="0" selected>否</option>
								    </select>
							    </div>
						    </fieldset>
				        </div>

				        <div class="form-group join-us-form-unit">
				          	<fieldset>
							    <label for="selectGPA" class="col-md-4 control-label">GPA成绩</label>
							    <div class="col-md-8">
							    	 <input type="text" name="gpa" class="form-control" id="inputName" placeholder="">
							    </div>
						    </fieldset>
				        </div>

				        <div class="form-group join-us-form-unit">
				          	<fieldset>
							    <label for="selectGRE" class="col-md-4 control-label">GRE成绩</label>
							    <div class="col-md-8">
							    	<input type="text" name="gre" class="form-control" id="inputName" placeholder="">
							    </div>
						    </fieldset>
				        </div>

				        <div class="form-group join-us-form-unit">
				          	<fieldset>
							    <label for="selectGMAT" class="col-md-4 control-label">GMAT成绩</label>
							    <div class="col-md-8">
							    	<input type="text" name="gmat" class="form-control" id="inputName" placeholder="">
							    </div>
						    </fieldset>
				        </div>

				        <div class="form-group join-us-form-unit">
				          	<fieldset>
							    <label for="selectTOFEL" class="col-md-4 control-label">TOFEL成绩</label>
							    <div class="col-md-8">
							    	<input type="text" name="toefl" class="form-control" id="inputName" placeholder="">
							    </div>
						    </fieldset>
				        </div>

				        <div class="form-group join-us-form-unit">
				          	<fieldset>
							    <label for="selectIELTS" class="col-md-4 control-label">IELTS成绩</label>
							    <div class="col-md-8">
							    	<input type="text" name="ielts" class="form-control" id="inputName" placeholder="">
							    </div>
						    </fieldset>
				        </div>

				      </div>

				      <div class="col-md-1">&nbsp;</div>
				    </div>
				</div>

			    <div id="join-us-form-agreement">
				    <div class="form-group join-us-form-unit">
			          	<fieldset>
						    <label for="selectWayKnown" class="col-md-6 control-label">通过何种方式知道我们的</label>
						    <div class="col-md-5 text-left">
						        <select name="wayKnowUs" class="selectpicker text-left" id="selectWayKnown">
							        <option>同学推荐</option>
								    <option>活动宣传</option>
								    <option>校园BBS</option>
								    <option>微信微博</option>
								    <option>其他</option>
							    </select>
						    </div>
						    <!-- <input type="text" name="selectWayKnownOthers" class="form-control" id="inputName" placeholder=""> -->
					    </fieldset>
			        </div>

			        <div class="col-md-12 text-center">
						<input type="checkbox" name="receiveLetter" id="chkReceiveMail"></input>
						<label for="chkReceiveMail">我愿意收到来自METALL的Newsletter</label>
			        </div>

			        <div class="col-md-12 text-center">
			        	<br/>
						<label id="order-prompt">预约提交后,我们将在3个工作日内通过电话，短信或者邮件的方式与您联系，请保持联络通畅</label>
			        </div>

			        <div class="col-md-12 text-center">
						<input type="submit" class="join-us-form-confirm-btn" value="我要预约"></input>
			        </div>
			    </div>

				
			</form>
		</div>

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
	<script src="js/icheck.js"></script>
	<script src="js/templatemo_custom.js"></script>
    <script type='text/javascript' src='js/logging.js'></script>
    <script type="text/javascript" src="js/bootstrap-select.js"></script>
    <script src="js/customization.js"></script>
    <!-- Flat-UI Components -->
    <script src="js/flatui-checkbox.js"></script>
    <script src="js/flatui-radio.js"></script>
    <script type="text/javascript">
        $(window).on('load', function () {

            $('.selectpicker').selectpicker({
                'selectedText': 'cat'
            });

            // $('.selectpicker').selectpicker('hide');
            $('#chkReceiveMail').iCheck({
			    checkboxClass: 'checkbox-green'
			});
        });
    </script>
    <div style="display:none;">
		<script language="javascript" type="text/javascript" src="http://js.users.51.la/17059421.js"></script>
		<noscript><a href="http://www.51.la/?17059421" target="_blank"><img alt="&#x6211;&#x8981;&#x5566;&#x514D;&#x8D39;&#x7EDF;&#x8BA1;" src="http://img.users.51.la/17059421.asp" style="border:none" /></a></noscript>
	</div>
  </body>
</html>
