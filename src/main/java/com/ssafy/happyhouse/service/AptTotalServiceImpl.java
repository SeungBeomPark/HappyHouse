package com.ssafy.happyhouse.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dao.AptTotalRepo;
import com.ssafy.happyhouse.dto.AptInfo;

@Service
public class AptTotalServiceImpl implements AptTotalService{

	@Autowired
	AptTotalRepo aptdao;
	
	@Override
	public void create(AptInfo aptinfo) {
		// TODO Auto-generated method stub
		aptdao.create(aptinfo);
	}

	@Override
	public List<AptInfo> selectAll() {
		// TODO Auto-generated method stub
		return aptdao.readAll();
	}

	@Override
	public AptInfo selectByID(Map<String, String> map) {
		// TODO Auto-generated method stub
		return aptdao.readByID(map);
	}
	@Override
	public List<AptInfo> selectByCondition(Map<String, String> map) {
		// TODO Auto-generated method stub
		return aptdao.readByCondition(map);
	}

	@Override
	public void update(AptInfo aptinfo) {
		// TODO Auto-generated method stub
		aptdao.update(aptinfo);
	}

	@Override
	public void delete(Map<String, String> map) {
		// TODO Auto-generated method stub
		aptdao.delete(map);
	}

}
