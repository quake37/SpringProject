package com.StudyDamoyeo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.StudyDamoyeo.domain.Criteria;
import com.StudyDamoyeo.domain.ReservationVO;
import com.StudyDamoyeo.mapper.ReservationMapper;


@Service
public class ReservationService {

	@Autowired
	ReservationMapper mapper;
	public List<ReservationVO> getList(Criteria cri) {
		
		return mapper.getList(cri);
	}
	public int getTotal(Criteria cri) {

		return mapper.getTotal(cri);
	}
	public void insert(ReservationVO vo) {
		mapper.insert(vo);
		
	}
	public List<ReservationVO> getMyList(String userid) {
		// TODO Auto-generated method stub
		return mapper.getMyList(userid);
	}
	public void updateStatus(ReservationVO vo) {
		mapper.updateStatus(vo);
		
	}
	public ReservationVO getVo(int no) {
		// TODO Auto-generated method stub
		return mapper.getVo(no);
	}
}
