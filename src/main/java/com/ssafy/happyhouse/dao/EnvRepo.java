package com.ssafy.happyhouse.dao;

import java.util.HashMap;
import java.util.List;
import com.ssafy.happyhouse.dto.Env;

public interface EnvRepo {
	
	public List<Env> selectAll(HashMap<String, String> map) throws Exception;
	public List<Env> selectRank() throws Exception;
}
