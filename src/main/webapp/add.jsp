<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<script type="text/javascript">
	var userName = cument.getElementsByName("userName");
	var password = cument.getElementsByName("password");
	var mobile = cument.getElementsByName("mobile");
	var email = cument.getElementsByName("email");
	var address = cument.getElementsByName("address");
	var hobby = cument.getElementsByName("hobby");
	if (userName == null) {
		document.write("用户名不能为空");
	}
</script>
</head>
<body>
	<h1 align="center">注册</h1>
	<form action="/OnlineEduResource/userController/toAddUser" name="userForm">
		<table cellspacing="0" align="center">
			<tr><td>用户号：</td><td><input type="text" name="userName"></td></tr>
			<tr><td>密码：</td><td><input type="password" name="password"></td></tr>
			<tr><td>手机号：</td><td><input type="text" name="mobile"></td></tr>
			<tr><td>邮箱    ：</td><td><input type="text" name="email"></td></tr>
			<tr><td>住址    ：</td><td><input type="text" name="address"></td></tr>
			<tr><td>爱好    ：</td><td><input type="text" name="hobby"></td></tr>
			<tr><td rowspan="2"><input type="submit" name="register" value="注册"></td><td><input type="reset" name="reset" value="重置"></td></tr>
		</table>
	</form>
</body>
</html>