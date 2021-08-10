package com.ssafy.happyhouse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dao.UserRepo;
import com.ssafy.happyhouse.dto.UserInfo;

@Service
public class UserServiceImpl implements UserService{

	
	@Autowired
	private UserRepo user;
	@Override
	public boolean login(UserInfo userinfo) {
		// TODO Auto-generated method stub
		UserInfo returnUser = user.search(userinfo);
		if(userinfo.getPassword().equals(returnUser.getPassword())) return true;
		else return false;
	}

	@Override
	public void update(UserInfo userinfo) {
		// TODO Auto-generated method stub
		user.modify(userinfo);
	}
	@Override
	public void create(UserInfo userinfo) {
		// TODO Auto-generated method stub
		user.insert(userinfo);
	}

	@Override
	public UserInfo select(UserInfo userinfo) {
		// TODO Auto-generated method stub
		return user.search(userinfo);
	}

	@Override
	public List<UserInfo> selectAll() {
		// TODO Auto-generated method stub
		return user.searchAll();
	}

	@Override
	public void delete(UserInfo userinfo) {
		// TODO Auto-generated method stub
		user.delete(userinfo);
	}
	
}
