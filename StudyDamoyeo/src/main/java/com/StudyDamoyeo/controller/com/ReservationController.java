package com.StudyDamoyeo.controller.com;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.StudyDamoyeo.domain.Criteria;
import com.StudyDamoyeo.domain.PageDTO;
import com.StudyDamoyeo.service.ReservationService;


@Controller
@RequestMapping("/reservation")
public class ReservationController {
	
	@Autowired
	ReservationService service;
	
	@GetMapping("/list")
	public String reservationList(Criteria cri, Model model) {
		model.addAttribute("list", service.getList(cri));

		int total = service.getTotal(cri);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		return "/com/reservation";
	}
}
