package com.ssafy.happyhouse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ssafy.happyhouse.dao.QnADAO;
import com.ssafy.happyhouse.dto.QnA;

@Service
public class QnAServiceImpl implements QnAService {
	
	@Autowired
	private QnADAO dao;
	
	@Override
	public List<QnA> retrieveQnA() {
		// TODO Auto-generated method stub
		return dao.selectQnA();
	}

	@Override
	public QnA detailQnA(int qnaNo) {
		// TODO Auto-generated method stub
		return dao.selectQnAByNo(qnaNo);
	}

	@Override
	public void writeQnA(QnA qna) {
		// TODO Auto-generated method stub
		dao.insertQnA(qna);
	}

	@Override
	public void updateQnA(QnA qna) {
		// TODO Auto-generated method stub
		dao.updateQnA(qna);
	}

	@Override
	public void deleteQnA(int qnaNo) {
		// TODO Auto-generated method stub
		dao.deleteQnA(qnaNo);
	}

}
