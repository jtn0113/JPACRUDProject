package com.skilldistillery.nationalparks.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.nationalparks.data.NationalParkDAO;

@Controller
public class NationalParkController {
	
	@Autowired
	private NationalParkDAO dao;

	@RequestMapping(path = {"/", "home.do"})
	public String goToHome(Model model) {
		model.addAttribute("parkList", dao.findAll());
		return "home";
	}
	
}
