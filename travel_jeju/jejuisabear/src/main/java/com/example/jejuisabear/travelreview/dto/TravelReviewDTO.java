package com.example.jejuisabear.travelreview.dto;

import java.sql.Date;

public class TravelReviewDTO {
	
	private int revNo;
	private String revTitle;
	private String revContent;
	private java.sql.Date revCreDate;
	private int placeNo;
	private int revViews;
	private String usersId;
	private String userNickname;
	private String placeName;
	private String pImageUrl;
	public TravelReviewDTO() {
		super();
	}
	public TravelReviewDTO(int revNo, String revTitle, String revContent, Date revCreDate, int placeNo, int revViews,
			String usersId, String userNickname, String placeName, String pImageUrl) {
		super();
		this.revNo = revNo;
		this.revTitle = revTitle;
		this.revContent = revContent;
		this.revCreDate = revCreDate;
		this.placeNo = placeNo;
		this.revViews = revViews;
		this.usersId = usersId;
		this.userNickname = userNickname;
		this.placeName = placeName;
		this.pImageUrl = pImageUrl;
	}
	public int getRevNo() {
		return revNo;
	}
	public void setRevNo(int revNo) {
		this.revNo = revNo;
	}
	public String getRevTitle() {
		return revTitle;
	}
	public void setRevTitle(String revTitle) {
		this.revTitle = revTitle;
	}
	public String getRevContent() {
		return revContent;
	}
	public void setRevContent(String revContent) {
		this.revContent = revContent;
	}
	public java.sql.Date getRevCreDate() {
		return revCreDate;
	}
	public void setRevCreDate(java.sql.Date revCreDate) {
		this.revCreDate = revCreDate;
	}
	public int getPlaceNo() {
		return placeNo;
	}
	public void setPlaceNo(int placeNo) {
		this.placeNo = placeNo;
	}
	public int getRevViews() {
		return revViews;
	}
	public void setRevViews(int revViews) {
		this.revViews = revViews;
	}
	public String getUsersId() {
		return usersId;
	}
	public void setUsersId(String usersId) {
		this.usersId = usersId;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public String getPlaceName() {
		return placeName;
	}
	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
	public String getpImageUrl() {
		return pImageUrl;
	}
	public void setpImageUrl(String pImageUrl) {
		this.pImageUrl = pImageUrl;
	}
	@Override
	public String toString() {
		return "TravelReviewDTO [revNo=" + revNo + ", revTitle=" + revTitle + ", revContent=" + revContent
				+ ", revCreDate=" + revCreDate + ", placeNo=" + placeNo + ", revViews=" + revViews + ", usersId="
				+ usersId + ", userNickname=" + userNickname + ", placeName=" + placeName + ", pImageUrl=" + pImageUrl
				+ "]";
	}


}
