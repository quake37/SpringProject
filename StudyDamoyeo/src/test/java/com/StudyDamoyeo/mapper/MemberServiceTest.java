package com.StudyDamoyeo.mapper;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.StudyDamoyeo.domain.MemberVO;
import com.StudyDamoyeo.service.MemberService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/root-context.xml")
@Log4j
public class MemberServiceTest {
	@Autowired
	private MemberService service;
	
	@Test
	@Ignore
	public void testInsert() {
		MemberVO vo = new MemberVO();
		vo.setId("test");
		vo.setMemberType("0");
		vo.setNickname("test");
		vo.setProfile_Img("default");
		vo.setPw("test");
		vo.setPhone("test");
		vo.setEmail("test@test.com");
		service.insert(vo);
	}
	@Test
	@Ignore
	public void testRead() {
		service.read("test");
	}
	@Test
	@Ignore
	public void testUpdate() {
		MemberVO vo = new MemberVO();
		vo.setId("test");
		vo.setMemberType("0");
		vo.setNickname("test");
		vo.setProfile_Img("profile");
		vo.setPw("test");
		vo.setPhone("test");
		vo.setEmail("test@test.com");
		service.update(vo);
	}
	@Test
	@Ignore
	public void testSelect() {
		service.getList();
	}
	@Test
	public void testDelete() {
		service.delete("test");
	}
}
