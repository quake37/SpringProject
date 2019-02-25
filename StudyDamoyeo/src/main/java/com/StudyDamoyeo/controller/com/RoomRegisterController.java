package com.StudyDamoyeo.controller.com;

import java.io.File;
import java.security.Principal;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.StudyDamoyeo.domain.MemberVO;
import com.StudyDamoyeo.domain.RoomVO;
import com.StudyDamoyeo.service.RoomService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/room")
public class RoomRegisterController {

	@Autowired
	RoomService service;
	@Autowired
	ServletContext application;

	@GetMapping("/register")
	public String roomRegister() {return "/com/roomRegister";}
	@PostMapping("/location")
	public String locationRegister() {return "/com/locationRegister";}
	@GetMapping("/location")
	public String goRegister() {return "/com/locationRegister";}
	
	@PostMapping(value ="/insertRoom",headers = ("content-type=multipart/*"))
	public String insertRoom(RoomVO vo, Model model,MultipartFile[] imgname, Principal principal) {
		String uploadFolder = application.getRealPath("/resources/upload");
		String uploadFolderPath = principal.getName();
		// make folder --------
		File uploadPath = new File(uploadFolder, uploadFolderPath);
		
		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		return null;
		
	}

}
