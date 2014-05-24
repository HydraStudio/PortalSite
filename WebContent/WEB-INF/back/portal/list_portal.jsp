<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<title>List Index</title>
<script type="text/javascript">
function checkIndexCount(a){
//	if($(a).attr("id")>2){
//		$(a).attr("href","javascript:void(0)");
//		alert("首页最多有三张图片！");
//	}
	var flag = 0;
	$('input[name="useFlag"]').each(function(i){
		if($(this).val()=="true"){
			flag++;
		}
	});
	if(flag >= 3){
		$(a).attr("href","javascript:void(0)");
		alert("首页最多有三张图片！");
	}
}
</script>
</head>
<body>
	<table style="border:1px red solid;" align="center">
		<tr>
			<td>
				ID
			</td>
			<td>
				图片名字
			</td>
			<td>
				主标题
			</td>
			<td>
				副标题
			</td>
			<td>
				图片活动链接
			</td>
		</tr>
		<s:if test="%{recordList ==null}">
			没有数据
		</s:if>
		<s:else>
			<s:iterator value="recordList" status="s">
				<tr>
					<td>
						${id} 
					</td>
					<td>
						<s:a href="%{imageUrl}">${name}</s:a>
					</td>
					<td>
						${title}
					</td>
					<td>
						${subTitle}
					</td>
					<td>
						${url}
					</td>
					<td>
						<s:a action="modifyInputPortal?id=%{id}">修改</s:a>
						<s:if test="%{useFlag == true}">
							<s:a action="setToIndexPortal?id=%{id}"  id="%{#s.index}">取消设为首页图片</s:a>
						</s:if>
						<s:else>
							<s:a action="setToIndexPortal?id=%{id}" onclick="checkIndexCount(this)" id="%{#s.index}">设为首页图片</s:a>
						</s:else>
						<s:hidden name="useFlag"></s:hidden>
						<s:a action="deletePortal?id=%{id}">删除</s:a>
					</td>
				</tr>
			</s:iterator>
		</s:else>
	</table>
	
	<br/>
	<center>
	<s:a action="addInputPortal">添加</s:a>
	</center>
	 <br/><br/><br/>
	
</body>
</html>