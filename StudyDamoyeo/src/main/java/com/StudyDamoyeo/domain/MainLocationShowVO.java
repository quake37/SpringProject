package com.StudyDamoyeo.domain;

import java.util.List;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class MainLocationShowVO{
	private List<String> imgname;
	private List<String> locationname;
	public List<String> getImgname() {
		return imgname;
	}
	public void setImgname(List<String> imgname) {
		this.imgname = imgname;
	}
	public List<String> getLocationname() {
		return locationname;
	}
	public void setLocationname(List<String> locationname) {
		this.locationname = locationname;
	}
	@Override
	public String toString() {
		return "MainLocationShowVO [imgname=" + imgname + ", locationname=" + locationname + "]";
	}
	
	
}