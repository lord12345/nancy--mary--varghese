package com.bride.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BrideCtyController {
	@RequestMapping("/")
	public String getHome() {
		return "home";
	}

}
