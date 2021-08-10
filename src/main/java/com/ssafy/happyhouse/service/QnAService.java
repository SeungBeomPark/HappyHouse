package com.ssafy.happyhouse.service;

import java.util.List;
import com.ssafy.happyhouse.dto.QnA;

public interface QnAService {
	List<QnA> retrieveQnA();
	public QnA detailQnA(int qnaNo);
	public void writeQnA(QnA qna);
	public void updateQnA(QnA qna);
	public void deleteQnA(int qnaNo);

}
