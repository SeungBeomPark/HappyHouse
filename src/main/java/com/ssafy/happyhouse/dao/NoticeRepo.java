package com.ssafy.happyhouse.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.ssafy.happyhouse.dto.Notice;

@Repository
public interface NoticeRepo {
	public List<Notice> selectAll() throws Exception;
	public Notice select(int no) throws Exception;
	public void insert(Notice notice) throws Exception;
	public void update(Notice notice) throws Exception;
	public void delete(int no) throws Exception;
	
}
