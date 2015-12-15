package com.wordpress.carledwinj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@Transactional
@RequestMapping("")
public class LoaderSpringBootController {

	@ResponseBody
	@RequestMapping("/")
	public String index(){
		return "application on air";
	}
	
	@RequestMapping("/ola")
	public String ola(){
		return "ola";
	}
}
