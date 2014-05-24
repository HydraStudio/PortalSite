<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<div class="site-header">
	<div class="main-navigation">
		<div class="responsive_menu">
			<ul>
				<li><a class="show-1 templatemo_home" href="#">产品介绍</a></li>
				<li><a class="show-2 templatemo_page2" href="#">师资介绍</a></li>
				<li><a class="show-3 templatemo_page3" href="#">成绩展示</a></li>
				<li><a class="show-4 templatemo_page4" href="#">活动资讯</a></li>
				<li><a class="show-5 templatemo_page5" href="#">加入我们</a></li>
				<li><a class="show-6 templatemo_page6" href="#">联系我们</a></li>     
			</ul>
		</div><!-- /.responsive_menu -->

		<div class="container">
			<div class="row">
				<div class="col-md-12 responsive-menu">
					<a href="#" class="menu-toggle-btn">
			            <i class="fa fa-bars"></i>
			        </a>
				</div> <!-- /.col-md-12 -->
				<div class="col-md-12 main_menu">
					<ul>
					    <li class="logo" onclick="openPortal()">&nbsp;</li>
						<li><a class="show-1 templatemo_page1" href="#">产品介绍</a></li>
						<li><a class="show-2 templatemo_page2" href="#">师资介绍</a></li>
						<li><a class="show-3 templatemo_page3" href="#">成绩展示</a></li>
						<li><a class="show-4 templatemo_page4" href="#">活动资讯</a></li>
						<li><a class="show-5 templatemo_page5" href="#">加入我们</a></li>
						<li><a class="show-6 templatemo_page6" href="#">联系我们</a></li>
						<!-- <li>
							<form class="search-box ">
						        <input type="search" class="search-input-usr form-control">
						        <button type="submit" class="btn search-btn-usr"><i class="fa fa-search"></i></button>
						    </form>
						</li> -->
					</ul>
				</div> <!-- /.col-md-12 -->
			</div> <!-- /.row -->
		</div><!-- /.container --> 
        <!-- <a class="navigation-bg" href="#" title=""  target="_blank"><img src="images/header.png" alt=""  /></a> -->
	</div> <!-- /.main-navigation -->
	<div class="banner">
    	
    </div>
</div> <!-- /.site-header -->
<form action="indexShowPortal.action" id="indexForm"></form>
<script type="text/javascript">
function openPortal(){
	
	$("#indexForm").submit();
}
</script>

	