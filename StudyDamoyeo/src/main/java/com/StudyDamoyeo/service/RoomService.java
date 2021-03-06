package com.StudyDamoyeo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.StudyDamoyeo.domain.Criteria;
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
		vo.setLocation(vo.getLocation1()+"#"+vo.getLocation2()+"#"+vo.getLocation3()+"#"+vo.getLocation4());
		mapper.update(vo);
	}

	public RoomVO read(String roomname) {
		// TODO Auto-generated method stub
		return mapper.read(roomname);
	}

	public List<String> readrooms(String userid) {
		// TODO Auto-generated method stub
		return mapper.readrooms(userid);
	}

	public List<RoomVO> getList(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getList(cri);
	}

	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getTotal(cri);
	}

	public List<RoomVO> getMainPageRoomList() {
		return mapper.getMainPageRoomList();
		
		
	}

	public List<RoomVO> getList_all() {
		// TODO Auto-generated method stub
		return mapper.getList_all();
	}

	public RoomVO read_int(int rno) {
		// TODO Auto-generated method stub
		return mapper.read_int(rno);
	}

	
	
}
