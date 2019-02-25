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
		mapper.insert(vo);
	}
	
	public void update(RoomVO vo) {
		mapper.update(vo);
	}
}
