package com.StudyDamoyeo.mapper;

import java.util.List;

import com.StudyDamoyeo.domain.MemberVO;



public interface MemberMapper {

	public List<MemberVO> getList();
	
	public void insert(MemberVO vo);
	
	public MemberVO read(String id);
	
	public void delete (String id);
	
	public void update(MemberVO vo);
	
	public int login(MemberVO vo);
	
}
