package com.StudyDamoyeo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.StudyDamoyeo.mapper.RecruitmentMapper;



@Service
public class RecruitmentService {
	@Autowired
	RecruitmentMapper mapper;
}
