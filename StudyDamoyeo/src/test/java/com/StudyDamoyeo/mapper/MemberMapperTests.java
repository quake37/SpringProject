package com.StudyDamoyeo.mapper;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.StudyDamoyeo.domain.MemberVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({"classpath:/spring/root-context.xml"})
@Log4j
public class MemberMapperTests {

 @Autowired
  private MemberMapper mapper;
  
  
  @Test
  public void testRead() {
    
    MemberVO vo = mapper.read("comcom");
    System.out.println(vo.toString());
    
    
   
    
  }
  
}


