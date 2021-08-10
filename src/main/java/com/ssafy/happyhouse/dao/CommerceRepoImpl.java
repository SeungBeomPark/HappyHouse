package com.ssafy.happyhouse.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.happyhouse.dto.Commerce;

@Repository
public class CommerceRepoImpl implements CommerceRepo{
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<Commerce> selectAll(HashMap<String, String> map) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("commerce.selectAll", map);
	}

	@Override
	public List<Commerce> selectRank() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("commerce.selectRank");
	}

}
