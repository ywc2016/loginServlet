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
	<form method="POST" name="formLogin" action="login">
		<h1 align="center">用户登录</h1>
		<br />
		<center>
			<table border=1>
				<tr>
					<td>用户名：</td>
					<td><input type="text" name="username" value="Your name"
						size="20" maxlength="20"
						onfocus="if (this.value=='Your name')  this.value='';" /></td>
				</tr>
				<tr>
					<td>密&nbsp;&nbsp;码：</td>
					<td><input type="password" name="password"
						value="Your password" size="20" maxlength="20"
						onfocus="if (this.value=='Your password')  this.value='';" /></td>
				</tr>
				<tr>
					<td><input type="submit" name="Submit" value="提交"
						onClick="return validateLogin()" /></td>
					<td><input type="reset" name="Reset" value="重置" /></td>
				</tr>
			</table>
		</center>
	</form>
</body>
<script language="javascript">
	function validateLogin() {
		var sUserName = document.formLogin.username.value;
		var sPassword = document.formLogin.password.value;
		if ((sUserName == "") || (sUserName == "Your name")) {
			alert("请输入用户名!");
			return false;
		}

		if ((sPassword == "") || (sPassword == "Your password")) {
			alert("请输入密码!");
			return false;
		}
	}
</script>
</html>

