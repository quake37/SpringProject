package com.StudyDamoyeo.controller;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		String uploadFileName = profile_Img.getOriginalFilename();
		uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);

		UUID uuid = UUID.randomUUID();
		uploadFileName = uuid.toString() + "_" + uploadFileName;

		File saveFile = new File(uploadPath, uploadFileName);
		
		MemberVO vo = service.read(uploadFolderPath);
		vo.setProfile_Img(uploadFolderPath+"/"+uploadFileName);
		System.out.println("path"+saveFile.getAbsolutePath());
		try {
			profile_Img.transferTo(saveFile);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		service.update(vo);

		return "redirect:/profile/read";
	}
	@PostMapping("/nicknameCheck")
	@ResponseBody
	public Map<Object, Object> nicknameCheck(@RequestBody String nickname) {
		int count = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		count = service.nicknamecheck(nickname);
		map.put("cnt", count);
		
		return map;
	}
	@PostMapping("/update")
	@ResponseBody
	@PreAuthorize("principal.username == #vo.userId")
	public ResponseEntity<String> profileUpdate(@RequestBody MemberVO vo, Model model ) {
		if(service.updateEmailCheck(vo)>0)
			vo.setVerified("N");
		service.update(vo);
		model.addAttribute("member", vo);
		return new ResponseEntity<>("success", HttpStatus.OK);
	}
	@RequestMapping(value = "/emailAuth", method = RequestMethod.POST)
	public void emailAuth(MemberVO vo) throws Exception {
		service.emailAuth(vo);
	}
	@RequestMapping(value = "/emailConfirm", method = RequestMethod.GET)
	public String emailConfirm(@RequestParam String userId, Model model) throws Exception { // 이메일인증
		service.create(user);
		service.userAuth(user_email);
		model.addAttribute("user_email", user_email);

		return "/user/emailConfirm";
	}

	
}
