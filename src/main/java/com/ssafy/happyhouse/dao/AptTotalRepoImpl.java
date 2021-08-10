package com.ssafy.happyhouse.dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.ssafy.happyhouse.dto.AptInfo;

@Repository
public class AptTotalRepoImpl implements AptTotalRepo{

	@Autowired
	private SqlSession sql;
	
	@Override
	public void create(AptInfo aptinfo) {
		// TODO Auto-generated method stub
		sql.insert("aptinfo.insert", aptinfo);
	}

	@Override
	public List<AptInfo> readAll() {
		// TODO Auto-generated method stub
		return sql.selectList("aptinfo.selectAll");
	}

	@Override
	public AptInfo readByID(Map<String, String> map) {
		// TODO Auto-generated method stub

		return sql.selectOne("aptinfo.selectByID",map);
	}
	@Override
	public List<AptInfo> readByCondition(Map<String, String> map) {
		// TODO Auto-generated method stub
		return sql.selectList("aptinfo.selectByCondition",map);
	}
	@Override
	public void update(AptInfo aptinfo) {
		// TODO Auto-generated method stub
		sql.update("aptinfo.updateAptTotal",aptinfo);
	}

	@Override
	public void delete(Map<String, String> map) {
		// TODO Auto-generated method stub
		sql.delete("aptinfo.delete");
	}

}
