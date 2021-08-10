package com.ssafy.happyhouse.service;

import java.util.HashMap;
import java.util.List;
import org.springframework.stereotype.Service;
import com.ssafy.happyhouse.dto.Commerce;


@Service
public interface CommerceService {
	
	public List<Commerce> selectAll(HashMap<String, String> map) throws Exception;
	public List<Commerce> selectRank() throws Exception;
	
}
