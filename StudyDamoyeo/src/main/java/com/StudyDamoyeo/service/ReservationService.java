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
}