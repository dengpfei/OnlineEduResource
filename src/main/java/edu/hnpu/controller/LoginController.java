package edu.hnpu.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.hnpu.bean.UserInfo;
import edu.hnpu.service.impl.UserServiceImpl;

@Controller
@RequestMapping("/loginController")
public class LoginController {
	@Autowired
	private UserServiceImpl userServiceImpl;
	PrintWriter out = null;
	@RequestMapping("/login")
	public String addUser(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String userName = request.getParameter("userName");
		String password =  request.getParameter("password");
		out = response.getWriter();
		System.out.println("开始登录，用户名："+userName+"密码："+password);
		UserInfo user = new UserInfo();
		user.setUserName(userName);
		user.setUserPwd(password);
		UserInfo userInfo = userServiceImpl.queryUserByUserCodeAndPassWord(user);
		if (userInfo!=null) {
				out.println("<script> alert('用户名或是密码错误，请重新登录');window.location.href='login.jsp'</script>");
		}
		return "index";
	}
}
