<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/pageCommon.js" charset="utf-8"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/PageUtils.js" charset="utf-8"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/blue/pageCommon.css" />
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
	<div>
		<%@ include file="/WEB-INF/public/back_head.jsp" %>
	</div>
	<table cellspacing="0" cellpadding="0" class="TableStyle">
		<thead>
			<tr align=center valign=middle id=TableTitle>
				<td width="10%">
					ID
				</td>
				<td width="15%">
					图片名字
				</td>
				<td width="15%">
					主标题
				</td>
				<td width="15%">
					副标题
				</td>
				<td width="20%">
					图片活动链接
				</td>
				<td width="25%">
					操作
				</td>
			</tr>
			</thead>
			<tbody id="TableData" class="dataContainer">
			<s:if test="%{recordList ==null || recordList.size()==0}">
				<tr class="TableDetail1 template"><td colspan="6">没有数据</td></tr>
			</s:if>
			<s:else>
				<s:iterator value="recordList" status="s">
					<tr class="TableDetail1 template">
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
		</tbody>
	</table>
	<div id="TableTail">
        <div id="TableTail_inside">
            <a href="addInputPortal.action"><img src="${pageContext.request.contextPath}/style/images/createNew.png" /></a>
        </div>
    </div>
	<div>
		<%@ include file="/WEB-INF/public/pageView.jsp" %>
		<s:form action="listPortal"></s:form>
	</div>
	
</body>
</html>