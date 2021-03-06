package com.StudyDamoyeo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import com.StudyDamoyeo.domain.ApplicationVO;
import com.StudyDamoyeo.mapper.ApplicationMapper;

@Service
public class ApplicationService {

	@Autowired
	ApplicationMapper mapper;
	
	public void insert(ApplicationVO vo) {
		mapper.insert(vo);
	}
	
	public List<ApplicationVO> getList(String userId){
		return mapper.getList(userId);
	}
	
	public void delete(int no) {
		mapper.delete(no);
	}
	
	public int search(ApplicationVO vo) {
		return mapper.search(vo);
	}
	
	public List<ApplicationVO> getApplicants(int recruit_no){
		return mapper.getApplicants(recruit_no);
	}
	
	public void update(ApplicationVO vo) {
		mapper.update(vo);
		System.out.println("vo result"+vo.getResult());
	}
}
