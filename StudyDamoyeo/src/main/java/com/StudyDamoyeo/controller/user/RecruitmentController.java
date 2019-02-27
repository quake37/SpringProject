package com.StudyDamoyeo.controller.user;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.StudyDamoyeo.service.RecruitmentService;



@Controller
@RequestMapping("/recruitment")
public class RecruitmentController {

	@Autowired
	RecruitmentService service;
	@Autowired
	ServletContext application;

	@GetMapping("/register")
	public String registerRecruitment() {return "/user/registerRecruitment";}
}
