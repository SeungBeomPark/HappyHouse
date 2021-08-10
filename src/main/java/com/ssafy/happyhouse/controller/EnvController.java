package com.ssafy.happyhouse.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssafy.happyhouse.dto.UserInfo;
import com.ssafy.happyhouse.service.EnvService;
import com.ssafy.happyhouse.service.UserService;

@Controller
public class EnvController {
	
	@Autowired
	private EnvService service;

	
	@RequestMapping("/listEnv.do")
	public String envList(HttpSession session, @RequestParam(name = "key", required = false) String key, @RequestParam(name = "word", required = false) String word, Model model) throws Exception {
		HashMap<String, String> map = new HashMap<>();
		map.put("key", key);
		map.put("word", word);
		UserInfo userinfo = (UserInfo)session.getAttribute("userinfo");
		model.addAttribute("lists", service.selectAll(map));
		model.addAttribute("Ranklist", service.selectRank());
		model.addAttribute("userinfo", userinfo);
		return "/env/envlist";
	}

}
