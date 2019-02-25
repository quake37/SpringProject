package com.StudyDamoyeo.controller.com;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.StudyDamoyeo.domain.Criteria;
import com.StudyDamoyeo.domain.MemberVO;
import com.StudyDamoyeo.domain.PageDTO;
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
	@GetMapping("/readRoomList")
	public String readRoomList(Criteria cri, Model model) {
		
		model.addAttribute("list", service.getList(cri));

		int total = service.getTotal(cri);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		
		return "/com/comRoomList";
		
	}
	
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
		model.addAttribute("room", vo);
		return  "/room/readRoomList";
		
	}
	
	@GetMapping("/readRoom")
	public String roomRead(@RequestParam("roomname") String roomname,Model model) {
		RoomVO vo = service.read(roomname);
		String[] locationsplit = vo.getLocation().split("#");
		vo.setLocation1(locationsplit[0]);
		vo.setLocation2(locationsplit[1]);
		vo.setLocation3(locationsplit[2]);
		vo.setLocation4(locationsplit[3]);
		model.addAttribute("room", vo);
		return "/com/readRoom";
	}
	
	@PostMapping("/readRooms")
	@ResponseBody
	public List<String> roomReads(Principal principal) {
		System.out.println(principal.getName());
		List<String> names = service.readrooms(principal.getName());
		System.out.println(names);
		return names;
	}
}
