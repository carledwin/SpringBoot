package com.wordpress.carledwinj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.wordpress.carledwinj.service.UserService;

@Controller
public class UsersController {

	private final UserService userService;
	
	@Autowired
	public UsersController(UserService userService){
		this.userService = userService;
	}
}
