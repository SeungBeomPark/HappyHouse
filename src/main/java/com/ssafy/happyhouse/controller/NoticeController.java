package com.ssafy.happyhouse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ssafy.happyhouse.dto.Notice;
import com.ssafy.happyhouse.service.NoticeService;


@Controller
public class NoticeController {
	@Autowired
	private NoticeService service;
	

	@RequestMapping("/listNotice.do")
	public String noticeList(Model model) throws Exception {
		model.addAttribute("lists", service.selectAll());
		return "/notice/noticelist";
	}
	@RequestMapping("/searchNotice.do")
	public String searchNotice(int no, Model model) throws Exception {
		model.addAttribute("notice", service.select(no));
		return "/notice/noticedetail";
	}
	@RequestMapping("/insertNoticeForm.do")
	public String insertNoticeForm(Model model) {
		return "notice/noticeinsert";
	}
	@RequestMapping("/insertNotice.do")
	public String insertNotice(Notice notice) throws Exception {
		service.insert(notice);
		return "redirect:listNotice.do";
	}
	@RequestMapping("/updateNoticeForm.do")
	public String updateNoticeForm(int no, Model model) throws Exception {
		model.addAttribute("notice", service.select(no));
		return "/notice/noticemodify";
	}
	
	@RequestMapping("/updateNotice.do")
	public String updateNotice(Notice notice) throws Exception {
		 service.update(notice);
		 return "redirect:listNotice.do";
	}
	@RequestMapping("/removeNotice.do")
	public String removeNotice(int no) throws Exception {
		service.delete(no);
		return "redirect:listNotice.do";
	}
}
