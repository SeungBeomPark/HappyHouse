package com.ssafy.happyhouse.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.happyhouse.dto.UserInfo;

@Repository
public class UserRepoImpl implements UserRepo{
	
	
	@Autowired
	private SqlSession sql;//sql문 호출하는 객체!!

	@Override
	public void insert(UserInfo userinfo) {
		// TODO Auto-generated method stub
		sql.insert("user.insert",userinfo);
	}

	@Override
	public List<UserInfo> searchAll() {
		// TODO Auto-generated method stub
		return sql.selectList("user.selectAll");
	}

	@Override
	public UserInfo search(UserInfo userinfo) {
		// TODO Auto-generated method stub
		return sql.selectOne("user.select",userinfo);
	}

	@Override
	public void modify(UserInfo newUserinfo) {
		// TODO Auto-generated method stub
		sql.update("user.update",newUserinfo);
	}

	@Override
	public void delete(UserInfo userInfo) {
		// TODO Auto-generated method stub
		sql.delete("user.delete");
	}

}
