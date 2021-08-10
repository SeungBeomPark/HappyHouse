package com.ssafy.happyhouse.dao;

import java.util.List;

import com.ssafy.happyhouse.dto.Selfproduct;

public interface SelfproductDao {
	
	public List<Selfproduct> selectList1() throws Exception;
	public List<Selfproduct> selectList2() throws Exception;
	public List<Selfproduct> selectList3() throws Exception;

}
