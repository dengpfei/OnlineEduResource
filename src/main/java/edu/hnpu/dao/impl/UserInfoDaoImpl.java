package edu.hnpu.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;

import edu.hnpu.bean.UserInfo;
import edu.hnpu.core.BaseDao;
import edu.hnpu.core.HQLExecute;
import edu.hnpu.dao.UserInfoDao;
public class UserInfoDaoImpl extends BaseDao implements UserInfoDao {

	@Override
	public void addUser(UserInfo user) {
		HQLExecute queryService = new HQLExecute(sessionFactory);
		queryService.insert(user);
	}

	@Override
	public UserInfo queryUserByUserCodeAndPassWord(UserInfo user) {
		HQLExecute queryService = new HQLExecute(sessionFactory);
		List<Object> args = new ArrayList<Object>();
		String hql = "from UserInfo where userName =?　and userPwd = ?";
		args.add(user.getUserName());
		args.add(user.getUserPwd());
		List<UserInfo> userList= queryService.find(hql, args.toArray());
		if (CollectionUtils.isEmpty(userList)) {
			return  null;
		}
		return userList.get(0);
	}

}
