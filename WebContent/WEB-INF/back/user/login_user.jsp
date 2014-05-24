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
<script language="javascript" src="${pageContext.request.contextPath}/js/common.js" charset="utf-8"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/blue/pageCommon.css" />
<link href="${pageContext.request.contextPath}/style/blue/login.css" type=text/css rel=stylesheet>

<title>Login</title>
</head>
<body leftmargin=0 topmargin=0 marginwidth=0 marginheight=0 class=PageBody>
<s:form action="loginUser" focusElement="loginNameInput">
    <div id="CenterAreaBg"> 
        <div id="CenterArea">
            <div id="LogoImg"><span style="font-size:20px;font-weight: bold; paddign-left:20px;">Metall 后台管理系统</span></div>
            <div id="LoginInfo">
                <table BORDER=0 CELLSPACING=0 CELLPADDING=0 width=100%>
                	<tr>
                		<td colspan="3"><!-- 显示错误 -->
							<font color="red"><s:fielderror/></font>
                		</td>
                	</tr>
                    <tr>
                        <td width=45 class="Subject"><img border="0" src="${pageContext.request.contextPath}/style/blue/images/login/userId.gif" /></td>
                        <td>
                        	<s:textfield name="username" size="20" tabindex="1" cssClass="TextField required" id="loginNameInput" />
                        </td>
                        <td rowspan="2" style="padding-left:10px;">
                        	<input type="image" tabindex="3" src="${pageContext.request.contextPath}/style/blue/images/login/userLogin_button.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td class="Subject"><img border="0" src="${pageContext.request.contextPath}/style/blue/images/login/password.gif" /></td>
                        <td><s:password name="password" id="aa" size="20" tabindex="2" showPassword="false" cssClass="TextField required" /></td>
                    </tr>
                </table>
            </div>
            <div id="CopyRight"><a href="javascript:void(0)">&copy; 2014 版权所有 Metall</a></div>
        </div>
    </div>
    </s:form>
</body>
</html>