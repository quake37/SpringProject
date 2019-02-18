package com.StudyDamoyeo.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.StudyDamoyeo.domain.MemberVO;
import com.StudyDamoyeo.service.MemberService;

public class CustomUserDetailService implements UserDetailsService{

	@Autowired
	MemberService service;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		MemberVO vo = null;
		try {
			vo = service.read(username); //디비 정보를 불러와 유저정보 조
		} catch (Exception e) {
			e.printStackTrace();
		}
		return (UserDetails) vo;
	}

}
