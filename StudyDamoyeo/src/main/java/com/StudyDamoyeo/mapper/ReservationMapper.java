package com.StudyDamoyeo.mapper;

import java.util.List;

import com.StudyDamoyeo.domain.Criteria;
import com.StudyDamoyeo.domain.ReservationVO;



public interface ReservationMapper {
	public List<ReservationVO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);

	public ReservationVO insert(ReservationVO vo);

	public List<ReservationVO> getMyList(String userid);
}
