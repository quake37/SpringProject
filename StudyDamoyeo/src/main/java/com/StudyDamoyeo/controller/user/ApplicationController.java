package com.StudyDamoyeo.controller.user;

import java.security.Principal;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.StudyDamoyeo.domain.ApplicationVO;
import com.StudyDamoyeo.domain.Criteria;
import com.StudyDamoyeo.domain.MemberVO;
import com.StudyDamoyeo.domain.PageDTO;
import com.StudyDamoyeo.domain.RecruitmentVO;
import com.StudyDamoyeo.domain.RoomVO;
import com.StudyDamoyeo.service.ApplicationService;
import com.StudyDamoyeo.service.MemberService;
import com.StudyDamoyeo.service.RecruitmentService;



@Controller
@RequestMapping("/application")
public class ApplicationController {

	@Autowired
	ApplicationService applicationService;
	@Autowired
	RecruitmentService recruitService;
	
	@ResponseBody
	@PostMapping("/insert")
	public ResponseEntity<String> insert(Principal principal, @RequestBody int recruit_no) {
		ApplicationVO vo = new ApplicationVO();
		vo.setRecruit_no(recruit_no);
		RecruitmentVO rvo = recruitService.read(recruit_no);
		rvo.setState_people(rvo.getState_people()+1);
		recruitService.update(rvo);
		String recruiter =rvo.getUserid();
		vo.setRecruiter(recruiter);
		vo.setUserId(principal.getName());
		applicationService.insert(vo);
			
		return new ResponseEntity<>("success", HttpStatus.OK);
	}

}
