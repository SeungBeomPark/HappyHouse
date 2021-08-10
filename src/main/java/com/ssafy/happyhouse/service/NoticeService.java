package com.ssafy.happyhouse.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.Notice;


@Service
public interface NoticeService {
	public List<Notice> selectAll() throws Exception;
	public Notice select(int no) throws Exception;
	public void insert(Notice notice) throws Exception;
	public void update(Notice notice) throws Exception;
	public void delete(int no) throws Exception;

}
