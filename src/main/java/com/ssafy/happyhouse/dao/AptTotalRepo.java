package com.ssafy.happyhouse.dao;

import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.dto.AptInfo;

public interface AptTotalRepo {
	void create(AptInfo aptinfo);
	List<AptInfo> readAll();
	AptInfo readByID(Map<String, String> map);
	List<AptInfo> readByCondition(Map<String, String> map);
	void update(AptInfo aptinfo);
	void delete(Map<String, String> map);

}
