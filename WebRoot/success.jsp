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
		String age = (String) session.getAttribute("age");
		String weight = (String) session.getAttribute("weight");
		String sex = (String) session.getAttribute("sex");
		System.out.println("性别：" + sex + "");
		if (sex.trim().equals("M")) {
			sex = "男";
		} else {
			sex = "女";
		}
	%>
	<div align="center">
		<%=userName%>
		欢迎您，登陆成功！<br /> <font color="blue">登陆用户信息：</font>
		<table border=1>
			<tr>
				<td>&nbsp;姓名：&nbsp;</td>
				<td>&nbsp;&nbsp;<%=userName%>&nbsp;&nbsp;
				</td>
			</tr>
			<tr>
				<td>&nbsp;年龄：&nbsp;</td>
				<td>&nbsp;&nbsp;<%=age%>&nbsp;&nbsp;
				</td>
			</tr>
			<tr>
				<td>&nbsp;体重：&nbsp;</td>
				<td>&nbsp;&nbsp;<%=weight%>&nbsp;kg&nbsp;</>
			</tr>
			<tr>
				<td>&nbsp;性别：&nbsp;</td>
				<td>&nbsp;&nbsp;<%=sex%>&nbsp;&nbsp;</>
			</tr>
		</table>
		<a href="login.jsp">返回</a>
	</div>
</body>
</html>

