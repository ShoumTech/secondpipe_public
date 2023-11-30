package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

	@ResponseBody
	@GetMapping("/home")
	public String getHomePage() {
		return "<h1 style='color:green;'>Hi Welcome to ci/cd...</h1>";
	}
}
