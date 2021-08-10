package com.ssafy.happyhouse.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.UserInfo;

@Service
public interface UserService {
	public boolean login(UserInfo userinfo);
	public void create(UserInfo userinfo);
	public void update(UserInfo userinfo);
	public UserInfo select(UserInfo userinfo);
	public List<UserInfo> selectAll();
	public void delete(UserInfo userinfo);
}
