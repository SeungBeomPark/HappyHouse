package com.ssafy.happyhouse.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.ssafy.happyhouse.dto.Selfproduct;

@Repository
public class SelfproductDaoImpl implements SelfproductDao{
	
	@Autowired
	private SqlSession session;
	@Override
	public List<Selfproduct> selectList1() throws Exception {
		
		return session.selectList("selfproduct.selectList1");
	}

	@Override
	public List<Selfproduct> selectList2() throws Exception {
		
		return session.selectList("selfproduct.selectList2");
	}

	@Override
	public List<Selfproduct> selectList3() throws Exception {
		
		return session.selectList("selfproduct.selectList3");
	}

}
