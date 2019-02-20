package com.StudyDamoyeo.controller.com;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.StudyDamoyeo.domain.MemberVO;
import com.StudyDamoyeo.mapper.RoomMapper;
import com.StudyDamoyeo.service.RoomService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/room")
public class RoomRegisterController {
	
	
	@Autowired
	RoomService service;
	
	
	@GetMapping("/register")
	public String roomRegister(Principal principal,Model model ) {
		String userId =principal.getName();
		System.out.println("mmmmm");
		/*
		 * MemberVO vo = mapper.read(userId); model.addAttribute("member", vo);
		 * if(vo.getAuthList().get(0).getAuth().equals("ROLE_COM"))
		 */
			return "/com/roomRegister";
		
	}
	
}
