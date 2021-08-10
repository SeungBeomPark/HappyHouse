package com.ssafy.happyhouse.service;

import java.util.HashMap;
import java.util.List;
import com.ssafy.happyhouse.dto.Env;

public interface EnvService {
	
	public List<Env> selectAll(HashMap<String, String> map) throws Exception;

	public List<Env> selectRank() throws Exception;

}
