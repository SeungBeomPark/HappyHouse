package com.ssafy.happyhouse.dao;

import java.util.List;


import com.ssafy.happyhouse.dto.UserInfo;

public interface UserRepo {
	public void insert(UserInfo userinfo);
	public List<UserInfo> searchAll();
	public UserInfo search(UserInfo userinfo);
	public void modify(UserInfo newUserifo);
	public void delete(UserInfo userInfo);
}
