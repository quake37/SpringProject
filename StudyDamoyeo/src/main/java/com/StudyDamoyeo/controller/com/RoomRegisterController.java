package com.StudyDamoyeo.controller.com;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.StudyDamoyeo.domain.MemberVO;
import com.StudyDamoyeo.service.RoomService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/room")
public class RoomRegisterController {

	@Autowired
	RoomService service;

	@GetMapping("/register")
	public String roomRegister() {return "/com/roomRegister";}
	@PostMapping("/location")
	public String locationRegister() {return "/com/locationRegister";}
	@GetMapping("/location")
	public String goRegister() {return "/com/locationRegister";}
	
	@PostMapping("/insertRoom")
	public String insertRoom(MemberVO vo, Model model) {
		
		
		return null;
		
	}

}
