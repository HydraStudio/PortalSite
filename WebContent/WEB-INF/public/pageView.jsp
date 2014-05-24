<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<div id=PageSelectorBar>
	<div id=PageSelectorSelectorArea>
	
		<a href="javascript: gotoPage(1)" title="首页" style="cursor: pointer;">
			首页
		</a>
		
		<s:iterator begin="%{beginPageIndex}" end="%{endPageIndex}" var="num">
			<s:if test="#num == currentPage"> <%-- 当前页 --%>
				<span class="PageSelectorNum PageSelectorSelected">${num}</span>
			</s:if>
			<s:else> <%-- 非当前页 --%>
				<span class="PageSelectorNum" style="cursor: pointer;" onClick="gotoPage(${num});">${num}</span>
			</s:else>
			
		</s:iterator>
		
		<a href="javascript: gotoPage(${pageCount})" title="尾页" style="cursor: pointer;">
			尾页
		</a>
		
		转到：
		<select onchange="gotoPage(this.value)" id="_pn">
			<s:iterator begin="1" end="%{pageCount}" var="num">
				<option value="${num}">${num}</option>
			</s:iterator>
		</select>
		<script type="text/javascript">
			$("#_pn").val("${currentPage}");
		</script>
		
	</div>
	<div id=PageSelectorMemo>
		页次：${currentPage}/${pageCount }页 &nbsp;
		每页显示：${pageSize }条 &nbsp;
		总记录数：${recordCount }条
	</div>
</div>


<script type="text/javascript">
	function gotoPage(pageNum){
		// window.location.href = "forum_show.action?id=${id}&pageNum=" + pageNum;
		$(document.forms[0]).append("<input type='hidden' name='pageNum' value='" + pageNum +"'>");
		document.forms[0].submit();
	}
</script>