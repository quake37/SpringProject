package com.StudyDamoyeo.mapper;

import com.StudyDamoyeo.domain.RoomVO;

public interface RoomMapper {

	public void insert(RoomVO vo);

	public void update(RoomVO vo);

	public RoomVO read(String userid);

}
