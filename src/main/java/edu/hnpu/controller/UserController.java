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
@RequestMapping("/userController")
public class UserController {
	@Autowired
	private UserServiceImpl userServiceImpl;
	PrintWriter out = null;
	@RequestMapping("/toAddUser")
	public String addUser(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String userName = request.getParameter("userName");
		out = response.getWriter();
		//查询用户名是不是已经存在了
		String password =  request.getParameter("password");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String hobby = request.getParameter("hobby");
		UserInfo user = new UserInfo();
		user.setUserName(userName);
		user.setUserPwd(password);
		user.setMobile(mobile);
		user.setEmail(email);
		user.setAddress(address);
		user.setHobby(hobby);
		userServiceImpl.addUser(user);
		return "register";
	}
	
	@RequestMapping("/checkIsExistUserName")
	public String getAllUser(UserInfo user,HttpServletRequest request,HttpServletResponse response) throws IOException{
		String userName = request.getParameter("userName");
		out = response.getWriter();
		UserInfo userInfo = userServiceImpl.queryUserInfoByUserName(userName);
		if (userInfo !=null) {
			//提示给他
			out.println("<script> alert('不好意思，该用户名已经被使用了，请你更换！');</script>");
			return "false";
		}
		return "true";
	}
}