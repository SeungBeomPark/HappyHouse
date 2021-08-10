package com.ssafy.happyhouse.controller;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssafy.happyhouse.dto.UserInfo;
import com.ssafy.happyhouse.service.UserService;


@Controller
public class UserController {
	@Autowired 
	private UserService user;
	
	@RequestMapping(value="/")
	public String mainView() throws Exception{
		return "index";
	}
	@RequestMapping(value="/login")
	public String login(UserInfo userinfo,Model model,HttpSession session) throws Exception{
		boolean flag = user.login(userinfo);
		
		if(flag) {
			session.setAttribute("userInfo", userinfo);
			System.out.println("성공");
			return "index";
		} 
		else {
			System.out.println("실패");
			return "user/login";	
		}
		
	}
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) throws Exception{
		session.invalidate();
		return "user/login";	
	}

	@RequestMapping(value="/MVjoin")
	public String MVjoin() throws Exception{
		return "/user/join";
	}
	@RequestMapping(value="/join.do")
	public String join(UserInfo userinfo) throws Exception{
		user.create(userinfo);
		return "user/login";
		
		
	}
	
	@RequestMapping(value="/MVmodify.do")
	public String MVmodify() throws Exception{
		return "/user/userModify";
	}
	@RequestMapping(value="/modify.do")
	public String modify(UserInfo userinfo) throws Exception{
		user.update(userinfo);	
		return "index";
		
		
	}
	
	@RequestMapping(value="/MVdelete.do")
	public String MVdelete() throws Exception{
		return "/user/delete";
	}
	@RequestMapping(value="/userdelete.do")
	public String delete(UserInfo userinfo, HttpSession session) throws Exception{
		user.delete(userinfo);
		session.invalidate();
		return "/user/login";
		
		
	}
	@RequestMapping("/mvSearchForm.do")
	public String MVsearch(HttpSession session, Model model) throws Exception{
		UserInfo userinfo = (UserInfo)session.getAttribute("userinfo");
		model.addAttribute("userInfo", userinfo);
		return "user/userSearch";
	}
	
	@RequestMapping("/resultSearch.do")
	public String search(UserInfo userinfo, Model model) throws Exception{
		model.addAttribute("findUser", user.select(userinfo));
		return "user/searchResult";
	}
	
	
}
