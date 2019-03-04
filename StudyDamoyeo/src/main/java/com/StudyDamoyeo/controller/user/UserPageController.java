package com.StudyDamoyeo.controller.user;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.StudyDamoyeo.domain.RecruitmentVO;
import com.StudyDamoyeo.domain.RoomVO;
import com.StudyDamoyeo.service.RecruitmentService;
import com.StudyDamoyeo.service.RoomService;

@Controller
@RequestMapping("/user")
public class UserPageController {
	@Autowired
	RoomService roomservice;
	@Autowired
	RecruitmentService recruitService;
	
	@GetMapping("/mainpage")
	public String mainpage() {return "/user/mainUser";}
	@GetMapping("/myStatus")
	public String myStatus(Principal principal, Model model) {
		List<RecruitmentVO> list =recruitService.getMyList(principal.getName());
		model.addAttribute("list", list);
		return "/user/myStatus";
	}
	@GetMapping("/roomList")
	public String roomList(Model model) {
		List<RoomVO> vo = roomservice.getList_all();
		for(RoomVO i : vo) {
			String[] location=i.getLocation().split("#");
			i.setLocation1(location[0]);
			i.setLocation2(location[1]);
			i.setLocation3(location[2]);
			i.setLocation4(location[3]);
		}
		model.addAttribute("list", vo);
		return "/user/roomList";
	}
	@GetMapping("/roomdetail")
	public String roomdetail(@RequestParam("rno") int rno,Model model){
		
		RoomVO vo = roomservice.read_int(rno);
		
		model.addAttribute("room", vo);
		return "/user/roomDetail";
	}
}
