package com.ssafy.happyhouse.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dao.NoticeRepo;
import com.ssafy.happyhouse.dto.Notice;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeRepo repo;
	
	@Override
	public List<Notice> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return repo.selectAll();
	}

	@Override
	public Notice select(int no) throws Exception {
		// TODO Auto-generated method stub
		return repo.select(no);
	}

	@Override
	public void insert(Notice notice) throws Exception {
		// TODO Auto-generated method stub
		repo.insert(notice);
		
	}

	@Override
	public void update(Notice notice) throws Exception {
		// TODO Auto-generated method stub
		repo.update(notice);
		
	}

	@Override
	public void delete(int no) throws Exception {
		// TODO Auto-generated method stub
		repo.delete(no);
		
	}

}
