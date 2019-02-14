package com.StudyDamoyeo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	private String insertUser(MemberVO vo, RedirectAttributes rttr) {
		service.insert(vo);
		rttr.addAttribute("member",vo);
		return "redirect:/mainUser";
		
	}
	@PostMapping("/insertCom")
	private String insertCom(MemberVO vo, RedirectAttributes rttr) {
		service.insert(vo);
		rttr.addAttribute("member",vo);
		return "redirect:/mainCom";
		
	}

	
}
