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
		//查询用户名是不是已经存在了
		UserInfo userInfo = userServiceImpl.queryUserInfoByUserName(userName);
		if (userInfo !=null) {
			//提示给他
		}
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
		return "add";
	}
	
	@RequestMapping("/getAllUser")
	public String getAllUser(UserInfo user,HttpServletRequest request){
		
		userServiceImpl.addUser(user);
		
		return "add";
	}
}