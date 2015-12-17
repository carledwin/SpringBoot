package com.wordpress.carledwinj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	private String getHomePage(){
		return "home";
	}
}
