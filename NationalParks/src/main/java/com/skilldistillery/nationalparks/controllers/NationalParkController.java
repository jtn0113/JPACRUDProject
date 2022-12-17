package com.skilldistillery.nationalparks.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.nationalparks.data.NationalParkDAO;
import com.skilldistillery.nationalparks.entities.NationalPark;

@Controller
public class NationalParkController {
	
	@Autowired
	private NationalParkDAO dao;

	@RequestMapping(path = {"/", "home.do"})
	public String goToHome(Model model) {
		model.addAttribute("parkList", dao.findAll());
		return "home";
	}
	
	@RequestMapping("showPark.do")
	public String showPark(@RequestParam int fid, Model model) {
		NationalPark park = dao.findById(fid);
		model.addAttribute("park", park);
		return "showPark";
	}
	
}
