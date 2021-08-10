package com.ssafy.happyhouse.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ssafy.happyhouse.dto.AptInfo;
import com.ssafy.happyhouse.service.AptTotalService;

@Controller
public class PreferAptController {
	@Autowired
	private AptTotalService apt;
	

	@RequestMapping(value="/listprefer.do")
	public String firstView(HttpSession session, Model model) throws Exception{
		System.out.println("1 : ");
		List<AptInfo> list = apt.selectAll();
		System.out.println("list.length : "+list.size());
		model.addAttribute("aptInfo",list);
		return "/prefer/preferList";
		
		
	}

	@RequestMapping(value="/preferapt")
	public String detailView(HttpSession session, Model model,HttpServletRequest request) {
		Map<String, String> map = new HashMap<String, String>();
		System.out.println("@@ : "+request.getParameter("현관구조"));
		System.out.println("@@ : "+request.getParameter("난방연료"));
		System.out.println("@@ : "+request.getParameter("난방방식"));
		if(request.getParameter("난방연료")=="") System.out.println("띄어쓰기");
		else if(request.getParameter("난방연료")==null) System.out.println("null");
		if(request.getParameter("난방방식")!="") {
			System.out.println("난방방식");
			map.put("nanbangmethod", request.getParameter("난방방식"));
		}
		if(request.getParameter("난방연료")!="") {
			System.out.println("난방연료");
			map.put("nanbangfuel", request.getParameter("난방연료"));
		}
		if(request.getParameter("현관구조")!="") {
			System.out.println("현관구조");
			map.put("doorstructure", request.getParameter("현관구조"));
		}
		if(request.getParameter("방개수")!="") {
			System.out.println("방개수");
			map.put("room", request.getParameter("방개수"));
		}
		if(request.getParameter("화장실개수")!="") {
			System.out.println("화장실개수");
			map.put("bathroom", request.getParameter("화장실개수"));
		}
		if(request.getParameter("평수")!="") {
			System.out.println("평수");
			map.put("spaceup", String.valueOf(Integer.parseInt(request.getParameter("평수"))-5));
			map.put("spacedown", request.getParameter("평수"));
			
		}

		if(request.getParameterValues("housetype")!=null) {
		String[] str = request.getParameterValues("housetype");
		for(String tmp:str) {
			System.out.println(tmp);
			map.put("str"+tmp, tmp);

		}
		
		}
		//model.addAttribute("aptInfo",list);
		List<AptInfo> list = apt.selectByCondition(map);
		System.out.println("list : "+ list.size());
		model.addAttribute("aptInfo",list);

		return "/prefer/preferList";
	}
	
	@RequestMapping(value="/preferdetail/{id}",method = RequestMethod.GET)
	public String detailView(@PathVariable("id") String id,Model model) {
		AptInfo info = new AptInfo();
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		info = apt.selectByID(map);
		model.addAttribute("aptInfo",info);
		return "/prefer/detailpage";
	}


}
