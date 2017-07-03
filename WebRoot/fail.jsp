<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'MyJsp.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
<html>
<head>
<title>登陆</title>
</head>
<body>
	<%
		String userName = (String) session.getAttribute("username");
		String msg = (String) session.getAttribute("message");
	%>
	<div align="center">
		<%=userName%>
		对不起，登陆失败！<br /> <font color="red">原因： </font>
		<%=msg%>
		<br /> <br /> 5秒后将返回登陆界面。
	</div>

	<%
		response.setHeader("Refresh", "5;URL=" + basePath + "login.jsp");
	%>
</body>
</html>

