package com.StudyDamoyeo.domain;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class RoomVO {
	private String userid;
	private String roomname;
	private String location1;
	private String location2;
	private String location3;
	private String location4;
	private String location;
	private int grade;
	private String imgname1;
	private String imgname2;
	private String imgname3;
	private String imgname4;
	private String imgname5;
	private String presentation1;
	private String presentation2;
	private String presentation3;
	private Date regdate;
	private Date udate;
	
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getRoomname() {
		return roomname;
	}
	public void setRoomname(String roomname) {
		this.roomname = roomname;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getImgname1() {
		return imgname1;
	}
	public void setImgname1(String imgname1) {
		this.imgname1 = imgname1;
	}
	public String getImgname2() {
		return imgname2;
	}
	public void setImgname2(String imgname2) {
		this.imgname2 = imgname2;
	}
	public String getImgname3() {
		return imgname3;
	}
	public void setImgname3(String imgname3) {
		this.imgname3 = imgname3;
	}
	public String getImgname4() {
		return imgname4;
	}
	public void setImgname4(String imgname4) {
		this.imgname4 = imgname4;
	}
	public String getImgname5() {
		return imgname5;
	}
	public void setImgname5(String imgname5) {
		this.imgname5 = imgname5;
	}
	public String getPresentation1() {
		return presentation1;
	}
	public void setPresentation1(String presentation1) {
		this.presentation1 = presentation1;
	}
	public String getPresentation2() {
		return presentation2;
	}
	public void setPresentation2(String presentation2) {
		this.presentation2 = presentation2;
	}
	public String getPresentation3() {
		return presentation3;
	}
	public void setPresentation3(String presentation3) {
		this.presentation3 = presentation3;
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
	public String getLocation1() {
		return location1;
	}
	public void setLocation1(String location1) {
		this.location1 = location1;
	}
	public String getLocation2() {
		return location2;
	}
	public void setLocation2(String location2) {
		this.location2 = location2;
	}
	public String getLocation3() {
		return location3;
	}
	public void setLocation3(String location3) {
		this.location3 = location3;
	}
	public String getLocation4() {
		return location4;
	}
	public void setLocation4(String location4) {
		this.location4 = location4;
	}
	@Override
	public String toString() {
		return "RoomVO [userid=" + userid + ", roomname=" + roomname + ", location1=" + location1 + ", location2="
				+ location2 + ", location3=" + location3 + ", location4=" + location4 + ", grade=" + grade
				+ ", imgname1=" + imgname1 + ", imgname2=" + imgname2 + ", imgname3=" + imgname3 + ", imgname4="
				+ imgname4 + ", imgname5=" + imgname5 + ", presentation1=" + presentation1 + ", presentation2="
				+ presentation2 + ", presentation3=" + presentation3 + ", regdate=" + regdate + ", udate=" + udate
				+ "]";
	}

	
}
