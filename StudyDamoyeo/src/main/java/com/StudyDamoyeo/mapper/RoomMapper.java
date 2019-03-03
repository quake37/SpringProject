package com.StudyDamoyeo.mapper;

import java.util.List;
import java.util.Map;

import com.StudyDamoyeo.domain.Criteria;
import com.StudyDamoyeo.domain.RoomVO;

public interface RoomMapper {

	public void insert(RoomVO vo);

	public void update(RoomVO vo);

	public RoomVO read(String roomname);

	public List<String> readrooms(String userid);

	public List<RoomVO> getList(Criteria cri);

	public int getTotal(Criteria cri);

	public List<RoomVO> getMainPageRoomList();

	public List<RoomVO> getList_all();

}
