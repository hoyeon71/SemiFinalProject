package com.example.jejuisabear.member.dto;

public class AuthDetailDTO {
	
	private int userNo;
	private int authNo;
	
	public AuthDetailDTO() {
		super();
	}

	public AuthDetailDTO(int userNo, int authNo) {
		super();
		this.userNo = userNo;
		this.authNo = authNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getAuthNo() {
		return authNo;
	}

	public void setAuthNo(int authNo) {
		this.authNo = authNo;
	}

	@Override
	public String toString() {
		return "AuthDetailDTO [userNo=" + userNo + ", authNo=" + authNo + "]";
	}
	
	

}
