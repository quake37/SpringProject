package com.StudyDamoyeo.domain;

import java.util.Date;

public class ReservationVO {
	
	private String userid;
	private int no;
	private String roomname;
	private int status;
	private int people;
	private String resdate;
	private Date regdate;
	private int rno;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	public String getRoomname() {
		return roomname;
	}
	public void setRoomname(String roomname) {
		this.roomname = roomname;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	@Override
	public String toString() {
		return "ReservationVO [userid=" + userid + ", no=" + no + ", roomname=" + roomname + ", status=" + status
				+ ", people=" + people + ", resdate=" + resdate + ", regdate=" + regdate + ", rno=" + rno + "]";
	}
	
		
	
}
