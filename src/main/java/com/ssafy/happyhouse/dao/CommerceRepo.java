package com.ssafy.happyhouse.dao;

import java.util.HashMap;
import java.util.List;
import com.ssafy.happyhouse.dto.Commerce;

public interface CommerceRepo {
	
	public List<Commerce> selectAll(HashMap<String, String> map) throws Exception;
	public List<Commerce> selectRank() throws Exception;
}
