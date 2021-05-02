package com.mbugajski.springdemo.security.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SecurityController {

	@GetMapping("/")
	public String showHome() {
		
		return "home";
	}
	
	@GetMapping("/management")
	public String showManagement() {
		
		return "management";
	}

	@GetMapping("/systems")
	public String showSystems() {
		
		return "systems";
	}
}
