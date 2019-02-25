package com.StudyDamoyeo.mapper;

import java.util.List;
import java.util.Map;

import com.StudyDamoyeo.domain.RoomVO;

public interface RoomMapper {

	public void insert(RoomVO vo);

	public void update(RoomVO vo);

	public RoomVO read(String roomname);

	public List<Map<Object, Object>> readrooms(String userid);

}
