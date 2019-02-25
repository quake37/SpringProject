package com.StudyDamoyeo.controller.com;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.StudyDamoyeo.domain.MemberVO;
import com.StudyDamoyeo.domain.RoomVO;
import com.StudyDamoyeo.service.RoomService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/room")
public class RoomController {

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
	
	@PostMapping(value = "/insertRoom",headers = ("content-type=multipart/*"))
	public String insertRoom(RoomVO vo, Model model,MultipartFile img1,MultipartFile img2,
			MultipartFile img3,MultipartFile img4,MultipartFile img5, Principal principal) {
		
	    vo.setUserid(principal.getName());
		String uploadFolder = application.getRealPath("/resources/upload");
		String uploadFolderPath = principal.getName();
		
		File uploadPath = new File(uploadFolder, uploadFolderPath);
		
		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		MultipartFile[] imgname = {img1,img2,img3,img4,img5};
		String[] uploadFileNames =  new String[5];
		

		for(int i=0;i<imgname.length;i++) {
			String uploadFileName = imgname[i].getOriginalFilename();
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
			
			UUID uuid = UUID.randomUUID();
			uploadFileName = uuid.toString() + "_" + uploadFileName;
			uploadFileNames[i] = uploadFileName;
			File saveFile = new File(uploadPath, uploadFileName);
			System.out.println("path"+saveFile.getAbsolutePath());
			try {
				imgname[i].transferTo(saveFile);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		vo.setImgname1(uploadFolderPath+"/"+uploadFileNames[0]);
		vo.setImgname2(uploadFolderPath+"/"+uploadFileNames[1]);
		vo.setImgname3(uploadFolderPath+"/"+uploadFileNames[2]);
		vo.setImgname4(uploadFolderPath+"/"+uploadFileNames[3]);
		vo.setImgname5(uploadFolderPath+"/"+uploadFileNames[4]);
		
		service.insert(vo);
		
		return  "redirect:/room/register";
		
	}

}
