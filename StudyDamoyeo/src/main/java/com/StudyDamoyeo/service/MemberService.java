package com.StudyDamoyeo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.StudyDamoyeo.domain.AuthVO;
import com.StudyDamoyeo.domain.MemberVO;
import com.StudyDamoyeo.mapper.MemberMapper;


@Service
public class MemberService {

	@Autowired
	private MemberMapper mapper;
	
	public void insert(MemberVO vo) {
		mapper.insert(vo);
	}
	
	public MemberVO read(String id) {
		return mapper.read(id);
	}
	
	public void update(MemberVO vo) {
		mapper.update(vo);
	}
	public void delete(String id) {
		mapper.delete(id);
	}
	
	public List<MemberVO> getList(){
		return mapper.getList();
	}
	public int login(MemberVO vo) {
		return mapper.login(vo);
	}

	public int idcheck(String userid) {
		System.out.println(userid);
		return mapper.checkid(userid);
	}
	public void insertAuth(AuthVO vo) {
		mapper.insertAuth(vo);
	}
}
