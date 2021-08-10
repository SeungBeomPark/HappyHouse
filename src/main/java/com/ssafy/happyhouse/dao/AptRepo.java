package com.ssafy.happyhouse.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ssafy.happyhouse.dto.HouseDeal;
import com.ssafy.happyhouse.dto.HouseInfo;

@Repository
public interface AptRepo {
	public List<HouseDeal> select(Map<String, String> map);
	public List<HouseDeal> selectAll();
	public HouseInfo detail(int no);
}
