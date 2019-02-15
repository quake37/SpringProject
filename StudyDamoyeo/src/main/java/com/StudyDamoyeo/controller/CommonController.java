package com.StudyDamoyeo.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.java.Log;

@Controller
@Log
public class CommonController {

	@GetMapping("/loginUser")
	public void loginUser(String error, String logout, Model model) {
		if(error!=null) {
			model.addAttribute("error", "로그인 에러 아이디 및 비밀번호를 확인해주세요");
		}
		if(logout != null) {
			model.addAttribute("logout", "로그아웃!");
		}
		
	}
	@GetMapping("/loginCom")
	public void loginCom(String error, String logout, Model model) {
		if(error!=null) {
			model.addAttribute("error", "로그인 에러 아이디 및 비밀번호를 확인해주세요");
		}
		if(logout != null) {
			model.addAttribute("logout", "로그아웃!");
		}
		
	}
	
}
