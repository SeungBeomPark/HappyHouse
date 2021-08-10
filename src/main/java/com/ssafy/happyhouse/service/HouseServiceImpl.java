package com.ssafy.happyhouse.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dao.AptRepo;
import com.ssafy.happyhouse.dto.HouseDeal;
import com.ssafy.happyhouse.dto.HouseInfo;

@Service
public class HouseServiceImpl implements HouseService{

	@Autowired
	private AptRepo house;
	
	@Override
	public List<HouseDeal> select(Map<String,String> map) {
		// TODO Auto-generated method stub
		return house.select(map);
	}

	@Override
	public List<HouseDeal> selectAll() {
		// TODO Auto-generated method stub
		return house.selectAll();
	}

	@Override
	public HouseInfo detail(int no) {
		// TODO Auto-generated method stub
		return house.detail(no);
	}

}
