package edu.hnpu.controller;

import javax.servlet.http.HttpServletRequest;

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
	@RequestMapping("/toAddUser")
	public String addUser(HttpServletRequest request){
		String userName = request.getParameter("userName");
		String password =  request.getParameter("password");
		System.out.println("开始添加，用户名："+userName+"密码："+password);
		UserInfo user = new UserInfo();
		user.setUserName(userName);
		user.setUserPwd(password);
		userServiceImpl.addUser(user);
		return "add";
	}
	
	@RequestMapping("/getAllUser")
	public String getAllUser(UserInfo user,HttpServletRequest request){
		
		userServiceImpl.addUser(user);
		
		return "add";
	}
}