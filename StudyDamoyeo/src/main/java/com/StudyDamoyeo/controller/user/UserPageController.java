package com.StudyDamoyeo.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserPageController {
	@GetMapping("/mainpage")
	public String mainpage() {return "/user/mainUser";}
}
