package com.StudyDamoyeo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.StudyDamoyeo.domain.MemberVO;

import lombok.extern.java.Log;

@Log
@Service
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private com.StudyDamoyeo.mapper.MemberMapper memberMapper;

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {


		// userName means userid
		MemberVO vo = memberMapper.read(userName);
		
		System.out.println(new com.StudyDamoyeo.domain.CustomUser(vo));
		return vo == null ? null : new com.StudyDamoyeo.domain.CustomUser(vo);
	} 

}
