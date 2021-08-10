package com.ssafy.happyhouse.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ssafy.happyhouse.dto.UserInfo;
import com.ssafy.happyhouse.service.SelfproductService;

@Controller
public class SelfproductController {
	
	@Autowired
	private SelfproductService service;
	
	@RequestMapping("/selfproduct.do")
	public String selfProductList(HttpSession session, Model model) throws Exception {
		UserInfo userinfo = (UserInfo)session.getAttribute("userinfo");
		model.addAttribute("list1", service.selectList1());
		model.addAttribute("list2", service.selectList2());
		model.addAttribute("list3", service.selectList3());
		model.addAttribute("userinfo", userinfo);
		return "/oneroom/selfproduct";
	}

}
