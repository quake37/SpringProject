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

	@GetMapping("/loginuser")
	public void loginInput(String error, String logout, Model model) {
		if (error != null) {
			System.out.println("error");
			model.addAttribute("error", "Login Error Check Your Account");
		}
		if (logout != null) {
			model.addAttribute("logout", "Logout!!");
		}
	
	}
	@GetMapping("/user/loginSuccess")
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
