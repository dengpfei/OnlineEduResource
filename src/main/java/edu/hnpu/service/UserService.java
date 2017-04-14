package edu.hnpu.service;

import edu.hnpu.bean.UserInfo;

public interface UserService {

	public void addUser(UserInfo user);
	
	public UserInfo queryUserByUserCodeAndPassWord(UserInfo user);
}
