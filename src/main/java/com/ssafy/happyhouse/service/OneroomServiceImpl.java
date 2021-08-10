package com.ssafy.happyhouse.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ssafy.happyhouse.dao.OneroomDao;
import com.ssafy.happyhouse.dto.Oneroom;

@Service
public class OneroomServiceImpl implements OneroomService{

	@Autowired
	private OneroomDao dao;
	
	@Override
	public List<Oneroom> selectAll(HashMap<String, String> map) throws Exception {
		return dao.selectAll(map);
	}

	@Override
	public List<Oneroom> selectRank() throws Exception {
		return dao.selectRank();
	}

}
