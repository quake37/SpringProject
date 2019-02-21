package com.StudyDamoyeo.controller;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.StudyDamoyeo.domain.AttachFileDTO;
import com.StudyDamoyeo.domain.MemberVO;
import com.StudyDamoyeo.service.MemberService;

@Controller
@RequestMapping("/profile")
public class ProfileController {

	@Autowired
	MemberService service;
	@Autowired
	ServletContext application;

	@GetMapping("/read")
	public String profileRead(Principal principal, Model model) {
		String userId = principal.getName();
		MemberVO vo = service.read(userId);
		model.addAttribute("member", vo);
		if (vo.getAuthList().get(0).getAuth().equals("ROLE_COM"))
			return "/com/profileCom";
		else
			return "/user/profileUser";
	}

	

	@PostMapping(value = "/imgUpload",headers = ("content-type=multipart/*"))
	public String uploadProfileImg(MultipartFile profile_Img, Principal principal) {
		String uploadFolder = application.getRealPath("/resources/upload");
		String uploadFolderPath = principal.getName();
		// make folder --------
		File uploadPath = new File(uploadFolder, uploadFolderPath);

		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		AttachFileDTO attachDTO = new AttachFileDTO();
		String uploadFileName = profile_Img.getOriginalFilename();
		uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);

		UUID uuid = UUID.randomUUID();
		uploadFileName = uuid.toString() + "_" + uploadFileName;

		File saveFile = new File(uploadPath, uploadFileName);
		
		MemberVO vo = service.read(uploadFolderPath);
		vo.setProfile_Img(saveFile.getAbsolutePath());
		try {
			profile_Img.transferTo(saveFile);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		service.update(vo);
		attachDTO.setUuid(uuid.toString());
		attachDTO.setUploadPath(uploadFolderPath);

		return "/com/profileCom";
	}
}
