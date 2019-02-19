package com.StudyDamoyeo.controller;

import java.io.PrintWriter;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.java.Log;
import lombok.extern.log4j.Log4j;

@Controller
@Log
public class CommonController {

	@GetMapping("/accessError")
	public String accessDenied(Authentication auth, Model model) {

		model.addAttribute("msg", "Access Denied");
		return "error/accessError";
	}

	@GetMapping("/customLogin")
	public void loginInput(String error, String logout, Model model, @RequestParam String type) {
		if (error != null) {
			System.out.println("error");
			model.addAttribute("error", "Login Error Check Your Account");
		}
		if (logout != null) {
			model.addAttribute("logout", "Logout!!");
		}
		if(type.equals("user"))
			model.addAttribute("type", "user");
		else if(type.equals("com"))
			model.addAttribute("type", "com");
	}
	@GetMapping("/loginSuccess")
	public String loginSuccess() {
		return "/user/mainUser";
	}


	@GetMapping("/customLogout")
	public void logoutGET() {

	}

	@PostMapping("/customLogout")
	public void logoutPost() {

	}

}
