package com.StudyDamoyeo.controller;



import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestWrapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.StudyDamoyeo.mapper.MemberMapper;
import com.StudyDamoyeo.service.MemberService;

import lombok.extern.java.Log;

@Controller
@Log
public class CommonController {

	@Autowired
	MemberService service;
	@GetMapping("/accessError")
	public String accessDenied(Authentication auth, Model model) {

		model.addAttribute("msg", "Access Denied");
		return "error/accessError";
	}

	@GetMapping("/customlogin")
	public void loginInput(String error, String logout, Model model) {
		if (error != null) {
			model.addAttribute("error", "Login Error Check Your Account");
		}
		if (logout != null) {
			model.addAttribute("logout", "Logout!!");
		}
	
	}
	@GetMapping("/loginSuccess")
	public String loginSuccess(Principal principal) {
		String user = principal.getName();
		String auth = service.checkAuth(user);
		if(auth.equals("ROLE_USER"))
			return "redirect:/user/mainpage";
		else
			return "/com/mainCom";
	}
	@GetMapping("/loginFail")
	public String loginFail(Model model) {
		return "index";
	}

	@GetMapping("/customLogout")
	public void logoutGET() {

	}

	@PostMapping("/customLogout")
	public void logoutPost() {

	}

}
