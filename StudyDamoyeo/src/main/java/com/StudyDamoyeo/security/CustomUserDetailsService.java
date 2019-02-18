package com.StudyDamoyeo.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.StudyDamoyeo.domain.MemberVO;

import lombok.extern.java.Log;

@Log
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private com.StudyDamoyeo.mapper.MemberMapper memberMapper;

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {


		// userName means userid
		MemberVO vo = memberMapper.read(userName);


		return vo == null ? null : new com.StudyDamoyeo.domain.CustomUser(vo);
	} 

}
