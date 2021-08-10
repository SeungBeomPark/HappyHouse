package com.ssafy.happyhouse.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.ssafy.happyhouse.dto.Env;

@Repository
public class EnvRepoImpl implements EnvRepo{
	
	@Autowired
	private SqlSession session;

	@Override
	public List<Env> selectAll(HashMap<String, String> map) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("env.selectAll", map);
	}

	@Override
	public List<Env> selectRank() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("env.selectRank");
	}
	
	
}
