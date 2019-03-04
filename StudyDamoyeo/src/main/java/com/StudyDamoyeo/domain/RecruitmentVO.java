package com.StudyDamoyeo.domain;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class RecruitmentVO {
	private int recru_no;
	private String userid;
	private String location;
	private int total_people;
	private int state_people;
	private String title;
	private String content;
	private String recruitment_type;
	private int recruitment_state;
	private Date regdate;
	private Date udate;
	private String expire_date;
	private String sido;
	private String gugun;
	
	
	
	
	public String getExpire_date() {
		return expire_date;
	}
	public void setExpire_date(String expire_date) {
		this.expire_date = expire_date;
	}
	public String getSido() {
		return sido;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	public String getGugun() {
		return gugun;
	}
	public void setGugun(String gugun) {
		this.gugun = gugun;
	}
	public int getRecru_no() {
		return recru_no;
	}
	public void setRecru_no(int recru_no) {
		this.recru_no = recru_no;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getTotal_people() {
		return total_people;
	}
	public void setTotal_people(int total_people) {
		this.total_people = total_people;
	}
	public int getState_people() {
		return state_people;
	}
	public void setState_people(int state_people) {
		this.state_people = state_people;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRecruitment_type() {
		return recruitment_type;
	}
	public void setRecruitment_type(String recruitment_type) {
		this.recruitment_type = recruitment_type;
	}
	public int getRecruitment_state() {
		return recruitment_state;
	}
	public void setRecruitment_state(int recruitment_state) {
		this.recruitment_state = recruitment_state;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getUdate() {
		return udate;
	}
	public void setUdate(Date udate) {
		this.udate = udate;
	}
	@Override
	public String toString() {
		return "RecruitmentVO [recru_no=" + recru_no + ", userid=" + userid + ", location=" + location
				+ ", total_people=" + total_people + ", state_people=" + state_people + ", title=" + title
				+ ", content=" + content + ", recruitment_type=" + recruitment_type + ", recruitment_state="
				+ recruitment_state + ", regdate=" + regdate + ", udate=" + udate + ", expire_date=" + expire_date
				+ ", sido=" + sido + ", gugun=" + gugun + "]";
	}
	
	
	
}
