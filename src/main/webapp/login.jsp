<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/clicki.web.css?V=20120501" media="screen" />
<link rel="stylesheet" type="text/css" href="css/clicki.loginandreg.css?V=20120501" media="screen" />
<link rel="stylesheet" type="text/css" href="css/clicki.webkitanimation.css?V=20120501" media="screen" />

<title>简洁大气的登录和注册页面</title>
</head>
<body>

<div class="theCenterBox" style="">
  <div class="theLoginBox">
    <div class="loginTxt">登录</div>
    <div class="theLoginArea" id="loginBox">
      <form id="leftForm" action="login.html" method="post">
        <p style="position: relative;">
          <label for="LoginForm_email">邮箱：</label>
          <input placeholder="请输入您的账号" name="LoginForm[email]" id="LoginForm_email" type="text" maxlength="255" />
          <span>请输入您的账号</span> </p>
        <p style="position: relative;">
          <label for="LoginForm_password">密码：</label>
          <input placeholder="请输入您的密码" name="LoginForm[password]" id="LoginForm_password" type="password" maxlength="16" />
          <span>请输入您的密码</span> </p>
        <div class="loginSubmitBnt fixPadding">
          <div>
            <input id="ytautoLogin" type="hidden" value="0" name="LoginForm[rememberMe]" />
            <input id="autoLogin" class="theRememberMe" name="LoginForm[rememberMe]" value="1" checked="checked" type="checkbox" />
            <label class="theRememberMeLabel" for="autoLogin">记住用户名和密码</label>
            <em class="forgotPasswordEm"><a href="#" title="忘记密码">忘记密码?</a>&nbsp;&nbsp;&nbsp;<a href="register.jsp" title="马上注册">马上注册</a></em>
            <div class="login_submit">
              <input name="userSubmit" class="theSubmitButton" value="" type="submit" />
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>

</body>
</html>
