package com.StudyDamoyeo.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;

@Getter
public class CustomUser extends User {

	private static final long serialVersionUID = 1L;
	
	private MemberVO member;

	public MemberVO getMember() {
		return member;
	}

	public void setMember(MemberVO member) {
		this.member = member;
	}

	public CustomUser(String userId, String pw, Collection<? extends GrantedAuthority> authorities) {
		super(userId, pw,  authorities);
	}

	public CustomUser(MemberVO vo) {
		super(vo.getUserId(), vo.getPw(), vo.getAuthList().stream()
				.map(auth -> new SimpleGrantedAuthority(auth.getAuth())).collect(Collectors.toList()));
		System.out.println(vo.getAuthList().get(0).getAuth());

		this.member = vo;
	}
}
