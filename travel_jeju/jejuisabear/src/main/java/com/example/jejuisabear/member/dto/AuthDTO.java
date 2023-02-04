package com.example.jejuisabear.member.dto;

public class AuthDTO {
	
	private int authNo;
	private String authName;
	
	public AuthDTO() {
		super();
	}

	public AuthDTO(int authNo, String authName) {
		super();
		this.authNo = authNo;
		this.authName = authName;
	}

	public int getAuthNo() {
		return authNo;
	}

	public String getAuthName() {
		return authName;
	}

	public void setAuthNo(int authNo) {
		this.authNo = authNo;
	}

	public void setAuthName(String authName) {
		this.authName = authName;
	}

	@Override
	public String toString() {
		return "AuthDetailDTO [authNo=" + authNo + ", authName=" + authName + "]";
	}
	

	

}
