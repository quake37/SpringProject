package com.StudyDamoyeo.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.StudyDamoyeo.domain.Criteria;
import com.StudyDamoyeo.domain.MemberVO;
import com.StudyDamoyeo.domain.PageDTO;
import com.StudyDamoyeo.domain.ReservationVO;
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
	@PostMapping("/insert")
	public String reservationInsert(ReservationVO vo) {		
		System.out.println(vo.toString());
		
		service.insert(vo);
		return "redirect:/user/myStatus";
	}
	@PostMapping("/successReservation")
	@ResponseBody
	public Map<Object, Object> successReservation(@RequestBody String send) {
//		if(service.updateEmailCheck(vo)>0)
//			vo.setVerified("N");
//		service.update(vo);
//		model.addAttribute("member", vo);
		Map<Object, Object> map = new HashMap<Object, Object>();
		ReservationVO vo = service.getVo(Integer.parseInt(send.split("#")[1])) ;
		if(send.split("#")[0].equals("1")) {
			vo.setStatus(0);
			vo.setNo(Integer.parseInt(send.split("#")[1]));
			service.updateStatus(vo);
			map.put("response", "success");
		}else {
			map.put("response", "cancle");
		}
		return map;	
	}
}
