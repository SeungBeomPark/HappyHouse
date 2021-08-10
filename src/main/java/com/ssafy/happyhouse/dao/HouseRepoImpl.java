package com.ssafy.happyhouse.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.happyhouse.dto.HouseDeal;
import com.ssafy.happyhouse.dto.HouseInfo;
@Repository
public class HouseRepoImpl implements AptRepo{
	@Autowired
	private SqlSession sql;
	
	@Override
	public List<HouseDeal> select(Map<String, String> map) {
		// TODO Auto-generated method stub
		System.out.println("map : "+map.get("word"));
		return sql.selectList("housedeal.select",map);
	}

	@Override
	public List<HouseDeal> selectAll() {
		// TODO Auto-generated method stub
		return sql.selectList("housedeal.selectAll");
	}

	@Override
	public HouseInfo detail(int no) {
		// TODO Auto-generated method stub
		HouseInfo newinfo = new HouseInfo();
		newinfo.setNo(no);
		return sql.selectOne("houseinfo.select",newinfo);
	}

}
