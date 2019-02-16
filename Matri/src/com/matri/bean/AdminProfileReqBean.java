package com.matri.bean;

import java.util.List;

public class AdminProfileReqBean {
	
	private int userId;
	private String profileRequested;
	private String requestStatus;
	private String createdBy;
	private String createdDatetime;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getProfileRequested() {
		return profileRequested;
	}
	public void setProfileRequested(String profileRequested) {
		this.profileRequested = profileRequested;
	}
	public String getRequestStatus() {
		return requestStatus;
	}
	public void setRequestStatus(String requestStatus) {
		this.requestStatus = requestStatus;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getCreatedDatetime() {
		return createdDatetime;
	}
	public void setCreatedDatetime(String createdDatetime) {
		this.createdDatetime = createdDatetime;
	}

}
