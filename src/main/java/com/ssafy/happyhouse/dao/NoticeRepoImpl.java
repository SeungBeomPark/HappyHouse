package com.ssafy.happyhouse.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.happyhouse.dto.Notice;

@Repository
public class NoticeRepoImpl implements NoticeRepo{
	
	@Autowired
	private SqlSession session;
	@Override
	public List<Notice> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("notice.selectAll");
	}

	@Override
	public Notice select(int no) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("notice.select", no);
	}

	@Override
	public void insert(Notice notice) throws Exception {
		// TODO Auto-generated method stub
		session.insert("notice.insert", notice);
		
	}

	@Override
	public void update(Notice notice) throws Exception {
		// TODO Auto-generated method stub
		session.update("notice.update", notice);
		
	}

	@Override
	public void delete(int no) throws Exception {
		// TODO Auto-generated method stub
		session.delete("notice.delete", no);
		
	}

}
