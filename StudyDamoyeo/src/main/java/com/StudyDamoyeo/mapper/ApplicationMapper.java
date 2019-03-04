package com.StudyDamoyeo.mapper;

import java.util.List;

import com.StudyDamoyeo.domain.ApplicationVO;

public interface ApplicationMapper {
	
	public void insert(ApplicationVO vo);
	
	public List<ApplicationVO> getList(String userId);
}
