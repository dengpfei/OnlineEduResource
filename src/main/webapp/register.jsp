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
  <style>
.theCenterBox{width:670px; margin-top:200px;}
</style>
  <div class="theLoginBox" style="width:657px">
    <div class="loginTxt">注册账号</div>
    <form id="leftForm" action="register.jsp" method="post">
      <div class="theLoginArea" id="loginBox">
        <p style="position: relative;">
          <label for="LoginForm_email">用户名：</label>
          <input placeholder="请输入您的用户名" name="LoginForm[email]" id="LoginForm_email" type="text" maxlength="255" />
          <span>请输入您的邮箱</span> </p>
        <p style="position: relative;">
          <label for="LoginForm_password">密码：</label>
          <input placeholder="请输入您的密码" name="LoginForm[password]" id="LoginForm_password" type="password" maxlength="16" />
          <span>请输入您的密码</span> </p>
        <p style="position: relative;">
          <label for="LoginForm_checksum">电话号码：</label>
          <input placeholder="请输入您的电话号码" name="LoginForm[checksum]" id="LoginForm_checksum" type="text" value="" />
          <span>请输入您的电话号码</span> </p>
        <p style="position: relative;">
          <label for="LoginForm_checksum">电子邮箱：</label>
          <input placeholder="请输入您的电子邮箱" name="LoginForm[checksum]" id="LoginForm_checksum" type="text" value="" />
          <span>请输入您的电子邮箱</span> </p>
        <p style="position: relative;">
          <label for="LoginForm_checksum">住址：</label>
          <input placeholder="请输入您的住址" name="LoginForm[checksum]" id="LoginForm_checksum" type="text" value="" />
          <span>请输入您的住址</span> </p>
        <p style="position: relative;">
          <label for="LoginForm_checksum">年龄层：</label>
          <input placeholder="请输入您的年龄层" name="LoginForm[checksum]" id="LoginForm_checksum" type="text" value="" />
          <span>请输入您的年龄层</span> </p>
        <div class="loginSubmitBnt">
          <div class="reg_submit">
            <input name="userSubmit" class="theSubmitButton" value="确定" type="submit"  />
          </div>
        </div>
      </div>
      <div class="theRegArea fixRegHeight" id="reg_reg">
        <a class="apply_reg" href="#"></a> <br/>
        <h2>快快加入我们把</h2>
        <br/>
        <a class="reg_login" href="login.jsp"></a> </div>
    </form>
  </div>
  
 
</div>
</body>
</html>
