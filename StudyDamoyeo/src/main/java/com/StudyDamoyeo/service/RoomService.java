package com.StudyDamoyeo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.StudyDamoyeo.mapper.RoomMapper;

@Service
public class RoomService {
	
	@Autowired
	RoomMapper mapper;
}
