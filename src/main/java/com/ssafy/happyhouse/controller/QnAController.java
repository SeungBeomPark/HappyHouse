package com.ssafy.happyhouse.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ssafy.happyhouse.dto.QnA;
import com.ssafy.happyhouse.dto.UserInfo;
import com.ssafy.happyhouse.service.QnAService;

@Controller
public class QnAController {
	@Autowired
	private QnAService service;
	

	@RequestMapping("/listQnA.do")
	public String qnaList(HttpSession session, Model model) throws Exception {
		UserInfo userinfo = (UserInfo)session.getAttribute("userinfo");
		model.addAttribute("userInfo", userinfo);
		model.addAttribute("lists", service.retrieveQnA());
		return "/QnA/QnAlist";
	}
	@RequestMapping("/searchQnA.do")
	public String searchQnA(HttpSession session, int qna_no, Model model) throws Exception {
		UserInfo userinfo = (UserInfo)session.getAttribute("userinfo");
		model.addAttribute("userInfo", userinfo);
		model.addAttribute("qna", service.detailQnA(qna_no));
		return "/QnA/QnAdetail";
	}
	@RequestMapping("/insertQnAForm.do")
	public String insertQnAForm(HttpSession session, Model model) {
		UserInfo userinfo = (UserInfo)session.getAttribute("userinfo");
		model.addAttribute("userInfo", userinfo);
		return "/QnA/QnAinsert";
	}
	@RequestMapping("/insertQnA.do")
	public String insertQnA(QnA qna) throws Exception {
		service.writeQnA(qna);
		return "redirect:listQnA.do";
	}
	@RequestMapping("/updateQnAForm.do")
	public String updateQnAForm(HttpSession session, int qna_no, Model model) throws Exception {
		UserInfo userinfo = (UserInfo)session.getAttribute("userinfo");
		 model.addAttribute("userInfo", userinfo);
		model.addAttribute("qna", service.detailQnA(qna_no));
		return "/QnA/QnAmodify";
	}
	
	@RequestMapping("/updateQnA.do")
	public String updateQnA(QnA qna, Model model) throws Exception {
		 service.updateQnA(qna);
		 return "redirect:listQnA.do";
	}
	@RequestMapping("/removeQnA.do")
	public String removeQnA(int qna_no) throws Exception {
		service.deleteQnA(qna_no);
		return "redirect:listQnA.do";
	}

}
