package com.StudyDamoyeo.mapper;

import java.util.List;

import com.StudyDamoyeo.domain.AuthVO;
import com.StudyDamoyeo.domain.MemberVO;



public interface MemberMapper {

	public List<MemberVO> getList();
	
	public void insert(MemberVO vo);
	
	public MemberVO read(String userId);
	
	public void delete (String userId);
	
	public void update(MemberVO vo);
	
	public int login(MemberVO vo);

	public int checkid(String userid);
	
	public void insertAuth(AuthVO vo);

	public int checknickname(String nickname);
	
}
