package com.StudyDamoyeo.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.StudyDamoyeo.domain.MemberVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/root-context.xml")
@Log4j
public class MemberServiceTest {
	@Autowired
	private MemberMapper mapper;

	/*
	 * @Test public void testGetList() { mapper.getList().forEach(member ->
	 * member.getClass()); }
	 * 
	 * @Test public void testInsert() { MemberVO vo = new MemberVO();
	 * 
	 * 
	 * }
	 * 
	 * @Test public void testRead() { MemberVO vo = service.read("test");
	 * log.info(vo); }
	 * 
	 * @Test public void testDelete() { service.delete("test"); }
	 * 
	 * @Test public void testUpdate() { MemberVO vo = new MemberVO();
	 * 
	 * service.update(vo); log.info(vo); }
	 */
}
