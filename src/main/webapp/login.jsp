<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
</head>
<script type="text/javascript">
</script>
<body>
<div id="login">
<h1 align="center">用户登录</h1>
	<form action="loginController/login" name="login">
		<table cellspacing="0" align="center">
			<tr><td>用户号：</td><td><input type="text" name="userName"></td></tr>
			<tr><td>密码：</td><td><input type="text" name="password"></td></tr>
			<tr><td rowspan="2"><input type="submit" value="登录" ></td><td><input type="reset" value="重置" ></td></tr>
			<tr><td><a href="pwdGet.jsp">不小心，忘记密码？？？</a></td><td></td></tr>
		</table>
	</form>
</div>
</body>
</html>