package com.StudyDamoyeo.domain;



import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class MemberVO {

	private String id;
	private String pw;
	private String nickname;
	private String memberType;
	private String profile_Img;
	private String phone;
	private String email;
	private String authority;
	
	public String getId() {
		return id;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getProfile_Img() {
		return profile_Img;
	}
	public void setProfile_Img(String profile_Img) {
		this.profile_Img = profile_Img;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setId(String id) {
		this.id = id;
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
		return memberType;
	}
	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", nickname=" + nickname + ", memberType=" + memberType
				+ ", profile_Img=" + profile_Img + ", phone=" + phone + ", email=" + email + "]";
	}
	
	
	
	
}
