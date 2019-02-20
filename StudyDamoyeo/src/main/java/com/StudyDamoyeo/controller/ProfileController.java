package com.StudyDamoyeo.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.StudyDamoyeo.domain.MemberVO;
import com.StudyDamoyeo.mapper.MemberMapper;
import com.StudyDamoyeo.service.MemberService;

@Controller
@RequestMapping("/profile")
public class ProfileController {

	@Autowired
	MemberService service;
	
	@GetMapping("/read")
	public String profileRead(Principal principal,Model model ) {
		String userId =principal.getName();
		MemberVO vo = service.read(userId);
		model.addAttribute("member", vo);
		if(vo.getAuthList().get(0).getAuth().equals("ROLE_COM"))
			return "/com/profileCom";
		else
			return "/user/profileUser";
	}
}
