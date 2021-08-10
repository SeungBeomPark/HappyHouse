package com.ssafy.happyhouse.service;

import java.util.HashMap;
import java.util.List;
import com.ssafy.happyhouse.dto.Oneroom;

public interface OneroomService {
	
	public List<Oneroom> selectAll(HashMap<String, String> map) throws Exception;
	public List<Oneroom> selectRank() throws Exception;

}
