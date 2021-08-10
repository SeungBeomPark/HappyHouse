package com.ssafy.happyhouse.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.ssafy.happyhouse.dto.QnA;


@Repository
public class QnADAOImpl implements QnADAO{
	
	@Autowired
	private SqlSession session;

	@Override
	public List<QnA> selectQnA() {
		// TODO Auto-generated method stub
		return session.selectList("qna.selectQnA");
	}

	@Override
	public QnA selectQnAByNo(int qnaNo) {
		// TODO Auto-generated method stub
		return session.selectOne("qna.selectQnAByNo", qnaNo);
	}

	@Override
	public void insertQnA(QnA qna) {
		// TODO Auto-generated method stub
		session.insert("qna.insertQnA", qna);
	}

	@Override
	public void updateQnA(QnA qna) {
		// TODO Auto-generated method stub
		session.update("qna.updateQnA", qna);
	}

	@Override
	public void deleteQnA(int qnaNo) {
		// TODO Auto-generated method stub
		session.delete("qna.deleteQnA", qnaNo);
	}

}
