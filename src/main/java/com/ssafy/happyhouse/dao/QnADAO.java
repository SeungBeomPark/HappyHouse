package com.ssafy.happyhouse.dao;

import java.util.List;
import com.ssafy.happyhouse.dto.QnA;

public interface QnADAO {
	public List<QnA> selectQnA();
	public QnA selectQnAByNo(int qnaNo);
	public void insertQnA(QnA qna);
	public void updateQnA(QnA qna);
	public void deleteQnA(int qnaNo);

}
