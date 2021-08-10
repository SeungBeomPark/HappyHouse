package com.ssafy.happyhouse.service;

import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.dto.AptInfo;

public interface AptTotalService {
	void create(AptInfo aptinfo);
	List<AptInfo> selectAll();
	AptInfo selectByID(Map<String, String> map);
	List<AptInfo> selectByCondition(Map<String, String> map);
	void update(AptInfo aptinfo);
	void delete(Map<String, String> map);
}
