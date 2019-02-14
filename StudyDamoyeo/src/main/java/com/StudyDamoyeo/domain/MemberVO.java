package com.StudyDamoyeo.domain;



import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
public class MemberVO {
	private int mno;
	private String id;
	private String pw;
	private String nickname;
	private String memberType;
	private String profile_Img;
	private Date regDate;
	private Date uDate;
}
