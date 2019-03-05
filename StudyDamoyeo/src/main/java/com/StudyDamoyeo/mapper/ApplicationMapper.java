package com.StudyDamoyeo.mapper;

import java.util.List;

import com.StudyDamoyeo.domain.ApplicationVO;

public interface ApplicationMapper {
	
	public void insert(ApplicationVO vo);
	
	public List<ApplicationVO> getList(String userId);
	
	public void delete(int no);
	
	public int search(ApplicationVO vo);
	
	public List<ApplicationVO> getApplicants(int recruit_no);
}
