package com.ssafy.happyhouse.controller;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssafy.happyhouse.dto.HouseDeal;
import com.ssafy.happyhouse.dto.HouseInfo;
import com.ssafy.happyhouse.dto.UserInfo;
import com.ssafy.happyhouse.service.HouseService;

@Controller
public class AptController {
	@Autowired
	private HouseService house;
	
	@RequestMapping(value="/houseList.do")
	public String firstView(HttpSession session, Model model) throws Exception{
		System.out.println("1");
		UserInfo userinfo = (UserInfo)session.getAttribute("userInfo");
		
		List<HouseDeal> list = house.selectAll();
		System.out.print(list.get(0).getAptName());
		System.out.println("list : "+list.size());
		model.addAttribute("userInfo", userinfo);
		model.addAttribute("houseinfos",list);

		return "/house/houseInfoList";
		
		
	}
	@RequestMapping(value="/detail/{no}",method = RequestMethod.GET)
	public String detailView(@PathVariable("no") int no,Model model) {
		HouseInfo info = new HouseInfo();
		System.out.println("no : "+no);
		info = house.detail(no);
		System.out.println("ss : "+info.getAptName());
		model.addAttribute("houseinfo",info);
		return "/house/detailpage";
	}
	
	@RequestMapping(value="/search",method = RequestMethod.GET)
	public String searchView(HttpServletRequest request,Model model) {
		HouseInfo info = new HouseInfo();
		System.out.println("search : "+request.getParameter("search"));
		System.out.println("word : "+request.getParameter("word"));
		String search = request.getParameter("search");
		String word = request.getParameter("word");
		//System.out.println("word : "+word);
		Map<String, String> map = new HashMap<String, String>();
		map.put("search", search);
		map.put("word", word);
		List<HouseDeal> list = house.select(map);
		System.out.println(list.size());
		model.addAttribute("houseinfos",list);
		return "/house/houseInfoList";
		
	}
	
	
}
