package com.ssafy.happyhouse.service;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ssafy.happyhouse.dao.CommerceRepo;
import com.ssafy.happyhouse.dto.Commerce;

@Service
public class CommerceServiceImpl implements CommerceService{
	
	@Autowired
	private CommerceRepo repo;
	
	
	@Override
	public List<Commerce> selectAll(HashMap<String, String> map) throws Exception {
		// TODO Auto-generated method stub
		return repo.selectAll(map);
	}


	@Override
	public List<Commerce> selectRank() throws Exception {
		// TODO Auto-generated method stub
		return repo.selectRank();
	}

}
