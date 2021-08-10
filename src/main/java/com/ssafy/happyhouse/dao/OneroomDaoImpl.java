package com.ssafy.happyhouse.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.ssafy.happyhouse.dto.Oneroom;

@Repository
public class OneroomDaoImpl implements OneroomDao{

	@Autowired
	private SqlSession session;
	
	@Override
	public List<Oneroom> selectAll(HashMap<String, String> map) throws Exception {
		
		return session.selectList("oneroom.selectAll", map);
	}

	@Override
	public List<Oneroom> selectRank() throws Exception {
		
		return session.selectList("oneroom.selectRank");
	}

}
