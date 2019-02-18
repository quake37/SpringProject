package com.StudyDamoyeo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.StudyDamoyeo.domain.MemberVO;
import com.StudyDamoyeo.service.MemberService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@PostMapping("/insertUser")
	private String insertUser(MemberVO vo, Model model) {
		vo.setMemberType("0");
		vo.setProfile_Img("null");
		vo.setAuthority("ROLE_USER");
		System.out.println(vo.toString());
		service.insert(vo);
		model.addAttribute("member",vo);
		return "index";
		
	}
	@PostMapping("/insertCom")
	private String insertCom(MemberVO vo, Model model) {
		vo.setMemberType("1");
		vo.setProfile_Img("null");
		vo.setAuthority("ROLE_COM");
		service.insert(vo);
		model.addAttribute("member",vo);
		return "index";
		
	}
	

	
}
