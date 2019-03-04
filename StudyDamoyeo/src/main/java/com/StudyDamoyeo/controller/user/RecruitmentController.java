package com.StudyDamoyeo.controller.user;

import java.security.Principal;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.StudyDamoyeo.domain.Criteria;
import com.StudyDamoyeo.domain.MemberVO;
import com.StudyDamoyeo.domain.PageDTO;
import com.StudyDamoyeo.domain.RecruitmentVO;
import com.StudyDamoyeo.domain.RoomVO;
import com.StudyDamoyeo.service.MemberService;
import com.StudyDamoyeo.service.RecruitmentService;



@Controller
@RequestMapping("/recruitment")
public class RecruitmentController {

	@Autowired
	RecruitmentService service;
	@Autowired
	ServletContext application;
	@Autowired
	MemberService memberservice;

	@GetMapping("/register")
	public String registerRecruitment() {return "/user/registerRecruitment";}
	
	@PostMapping("/insert")
	public String insertRecruitment(Model model,Principal principal,RecruitmentVO vo) {
		vo.setUserid(principal.getName());
		vo.setLocation(vo.getSido()+"/"+vo.getGugun());
		service.insert(vo);
		
		
		return "redirect:/recruitment/readRecruitmentList";
		
	}
	
	@GetMapping("/readRecruitmentList")
	public String readRecruitmentList(Criteria cri, Model model) {
		List<RecruitmentVO> vo = service.getList(cri);
		model.addAttribute("list", vo);
		int total = service.getTotal(cri);
		model.addAttribute("pageMaker", new PageDTO(cri, total));

		
		
		return "/user/recruitmentList";
		
	}
	
	@GetMapping("/readRecruitment")
	public String roomRead(@RequestParam("recru_no") int recru_no,Model model) {
		
		System.out.println(recru_no);
		RecruitmentVO vo = service.read(recru_no);
		MemberVO membervo = memberservice.read(vo.getUserid());
		model.addAttribute("nickname",membervo.getNickname());
		model.addAttribute("email",membervo.getEmail());
		model.addAttribute("recruitment", vo);
		return "/user/recruitmentDetail";
	}
}
