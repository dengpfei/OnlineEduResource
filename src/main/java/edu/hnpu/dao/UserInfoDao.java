package edu.hnpu.dao;

import edu.hnpu.bean.UserInfo;

public interface UserInfoDao {
	
	public void addUser(UserInfo user);
	
	public UserInfo queryUserByUserCodeAndPassWord(UserInfo user);
}
