package com.StudyDamoyeo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.StudyDamoyeo.domain.RoomVO;
import com.StudyDamoyeo.mapper.RoomMapper;

@Service
public class RoomService {
	
	@Autowired
	RoomMapper mapper;
	
	public void insert(RoomVO vo) {
		
		vo.setLocation(vo.getLocation1()+"#"+vo.getLocation2()+"#"+vo.getLocation3()+"#"+vo.getLocation4());
		
		mapper.insert(vo);
	}
	
	public void update(RoomVO vo) {
		mapper.update(vo);
	}

	public RoomVO read(String userid) {
		// TODO Auto-generated method stub
		return mapper.read(userid);
	}
	
	
}
