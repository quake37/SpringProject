package com.StudyDamoyeo.domain;



import java.util.List;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class MemberVO {

	private String userid;
	private String pw;
	private String nickname;
	private String membertype;
	private String profile_img;
	private String phone;
	private String email;
	private List<AuthVO> authlist;
	
	
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getProfile_Img() {
		return profile_img;
	}
	public void setProfile_Img(String profile_img) {
		this.profile_img = profile_img;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getMemberType() {
		return membertype;
	}
	public void setMemberType(String membertype) {
		this.membertype = membertype;
	}

	
	public String getUserId() {
		return userid;
	}

	public void setUserId(String userid) {
		this.userid = userid;
	}

	public List<AuthVO> getAuthList() {
		return authlist;
	}
	public void setAuthList(List<AuthVO> authList) {
		this.authlist = authList;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + userid + ", pw=" + pw + ", nickname=" + nickname + ", memberType=" + membertype
				+ ", profile_Img=" + profile_img + ", phone=" + phone + ", email=" + email + "]";
	}
	
	
	
	
}
