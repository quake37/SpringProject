package com.StudyDamoyeo.domain;



import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {

	private int mno;
	private String id;
	private String passward;
	private String nickname;
	private String memberType;
	private String profile_Img;
	private Date regDate;
	private Date uDate;
}
