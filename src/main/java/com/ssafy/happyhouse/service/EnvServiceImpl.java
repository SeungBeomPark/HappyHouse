package com.ssafy.happyhouse.service;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ssafy.happyhouse.dao.EnvRepo;
import com.ssafy.happyhouse.dto.Env;

@Service
public class EnvServiceImpl implements EnvService {
	@Autowired
	private EnvRepo repo;
	
	@Override
	public List<Env> selectAll(HashMap<String, String> map) throws Exception {
		// TODO Auto-generated method stub
		return repo.selectAll(map);
	}

	@Override
	public List<Env> selectRank() throws Exception {
		// TODO Auto-generated method stub
		return repo.selectRank();
	}

}
