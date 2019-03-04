package com.StudyDamoyeo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.StudyDamoyeo.domain.Criteria;
import com.StudyDamoyeo.domain.RecruitmentVO;
import com.StudyDamoyeo.mapper.RecruitmentMapper;



@Service
public class RecruitmentService {
	@Autowired
	RecruitmentMapper mapper;

	public RecruitmentVO read(int recru_no) {
		// TODO Auto-generated method stub
		return mapper.read(recru_no);
	}

	public void insert(RecruitmentVO vo) {
		// TODO Auto-generated method stub
		mapper.insert(vo);
	}

	public List<RecruitmentVO> getList(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getList(cri);
	}
	
	public List<RecruitmentVO> getMyList(String userId){
		return mapper.getMyList(userId);
	}

	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getTotal(cri);
	}
	public void update(RecruitmentVO vo) {
		 mapper.update(vo);
	}
}
