package com.StudyDamoyeo.mapper;

import java.util.List;

import com.StudyDamoyeo.domain.Criteria;
import com.StudyDamoyeo.domain.RecruitmentVO;

public interface RecruitmentMapper {

	public void insert(RecruitmentVO vo);

	public List<RecruitmentVO> getList(Criteria cri);

	public int getTotal(Criteria cri);

	public RecruitmentVO read(int recru_no);

}
