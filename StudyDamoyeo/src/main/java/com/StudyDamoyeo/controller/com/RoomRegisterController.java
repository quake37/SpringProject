package com.StudyDamoyeo.controller.com;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.StudyDamoyeo.service.RoomService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/room")
public class RoomRegisterController {

	@Autowired
	RoomService service;

	@GetMapping("/register")
	public String roomRegister(Principal principal) {
		System.out.println(principal.getName());

		return "/com/roomRegister";

	}

	@GetMapping("/location")
	public String locationRegister(Principal principal) {
		System.out.println(principal.getName());

		return "/com/locationRegister";

	}

}
