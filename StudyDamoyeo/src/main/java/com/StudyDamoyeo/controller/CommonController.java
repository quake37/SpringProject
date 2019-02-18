package com.StudyDamoyeo.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.extern.java.Log;
import lombok.extern.log4j.Log4j;

@Controller
@Log
public class CommonController {

	@GetMapping("/accessError")
	public	String accessDenied(Authentication auth, Model model) {

		model.addAttribute("msg", "Access Denied");
		return "error/accessError";
	}

	@GetMapping("/customLogin")
	public void loginInput(String error, String logout, Model model) {

		if (error != null) {
			model.addAttribute("error", "Login Error Check Your Account");
		}

		if (logout != null) {
			model.addAttribute("logout", "Logout!!");
		}
	}

	@GetMapping("/customLogout")
	public void logoutGET() {

	}

	@PostMapping("/customLogout")
	public void logoutPost() {

	}

}
