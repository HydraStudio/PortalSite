<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<div id="Title_bar">
	    <div id="Title_bar_Head" > 
	        <table align="center" width="80%">
				<tr>
					<td width="8%">
						<a href="listPortal.action">首页管理</a>
					</td>
					<td width="8%">
						<a href="javascript:void(0)">产品介绍</a>
					</td>
					<td width="8%">
						<a href="javascript:void(0)">师资介绍</a>
					</td>
					<td width="8%">
						<a href="javascript:void(0)">成绩展示</a>
					</td>
					<td width="8%">
						<a href="listActivityInfo.action">活动资讯</a>
					</td>
					<td width="8%">
						<a href="javascript:void(0)">加入我们</a>
					</td>
					<td width="8%">
						<a href="javascript:void(0)">联系我们</a>
					</td>
					<td width="8">
						<a href="listOrder.action">预约咨询</a>
					</td>
					<td width="8%">
						<a href="listUser.action">用户管理</a>
					</td>
					<td width="8%">
						<a href="systemManager.action">系统管理</a>
					</td>
					<td width="20%">
						<span>
							<img border="0" width="13" height="14" src="${pageContext.request.contextPath}/style/images/top/user.gif" /> 您好,${user.username }
							<a href="${pageContext.request.contextPath}/logoutUser.action">
	               				 <img width="78" height="20" alt="退出系统" src="${pageContext.request.contextPath}/style/blue/images/top/logout.gif" />
	            			</a>
            			</span>
					</td>
				</tr>
			</table>
			
	    </div>
	</div><br/>
	
