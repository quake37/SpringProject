package com.StudyDamoyeo.controller.user;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.StudyDamoyeo.domain.ApplicationVO;
import com.StudyDamoyeo.domain.RecruitmentVO;
import com.StudyDamoyeo.service.ApplicationService;
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
		String recruiter =rvo.getUserid();
		vo.setRecruiter(recruiter);
		vo.setUserId(principal.getName());
		applicationService.insert(vo);
		return new ResponseEntity<>("success", HttpStatus.OK);
	}
	
	@ResponseBody
	@PostMapping("/delete")
	public ResponseEntity<String> delete(@RequestBody int no) {
		
		applicationService.delete(no);
		return new ResponseEntity<>("success", HttpStatus.OK);
	}

}
