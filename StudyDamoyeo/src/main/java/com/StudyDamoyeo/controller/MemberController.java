package com.StudyDamoyeo.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.StudyDamoyeo.domain.AuthVO;
import com.StudyDamoyeo.domain.MemberVO;
import com.StudyDamoyeo.service.MemberService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService service;
	@Autowired  
	private PasswordEncoder pwencoder;
	@PostMapping("/insertUser")
	private String insertUser(MemberVO vo, Model model) {
		vo.setMemberType("0");
		vo.setProfile_Img("null");
		String pw=pwencoder.encode(vo.getPw());
		vo.setPw(pw);
		System.out.println(vo.toString());
		service.insert(vo);
		AuthVO auth = new AuthVO();
		auth.setUserid(vo.getUserId());
		auth.setAuth("ROLE_USER");
		service.insertAuth(auth);
		model.addAttribute("member", vo);
		return "index";

	}

	@PostMapping("/insertCom")
	private String insertCom(MemberVO vo, Model model) {
		vo.setMemberType("1");
		vo.setProfile_Img("null");
		service.insert(vo);
		AuthVO auth = new AuthVO();
		auth.setUserid(vo.getUserId());
		auth.setAuth("ROLE_COM");
		service.insertAuth(auth);
		model.addAttribute("member", vo);
		return "index";

	}
	

	@PostMapping("/idcheck")
	@ResponseBody
	public Map<Object, Object> idcheck(@RequestBody String userid) {
		int count = 0;
		System.out.println(userid);
		Map<Object, Object> map = new HashMap<Object, Object>();
		count = service.idcheck(userid);
		System.out.println(count);
		map.put("cnt", count);
		
		return map;
	}
	@PostMapping("/nicknamecheck")
	@ResponseBody
	public Map<Object, Object> nicknamecheck(@RequestBody String nickname) {
		int count = 0;
		System.out.println(nickname);
		Map<Object, Object> map = new HashMap<Object, Object>();
		count = service.nicknamecheck(nickname);
		System.out.println(count);
		map.put("cnt", count);
		
		return map;
	}

}
