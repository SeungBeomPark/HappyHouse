package com.ssafy.happyhouse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dao.SelfproductDao;
import com.ssafy.happyhouse.dto.Selfproduct;

@Service
public class SelfproductServiceImpl implements SelfproductService {

	@Autowired
	private SelfproductDao dao;
	@Override
	public List<Selfproduct> selectList1() throws Exception {

		return dao.selectList1();
	}

	@Override
	public List<Selfproduct> selectList2() throws Exception {

		return dao.selectList2();
	}

	@Override
	public List<Selfproduct> selectList3() throws Exception {

		return dao.selectList3();
	}

}
