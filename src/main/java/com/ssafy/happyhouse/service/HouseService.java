package com.ssafy.happyhouse.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.HouseDeal;
import com.ssafy.happyhouse.dto.HouseInfo;

@Service
public interface HouseService {

	public List<HouseDeal> select(Map<String, String> map);
	public List<HouseDeal> selectAll();
	public HouseInfo detail(int no);
}
