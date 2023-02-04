package com.example.jejuisabear.travelreview.entity;


import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity(name = "TravelReview")
@Table(name = "REVIEW")
@SequenceGenerator(
					name = "REVIEW_SEQ_GENERATOR",
					sequenceName = "REVIEW_SEQ",
					initialValue = 1,
					allocationSize = 1
)
public class TravelReview {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "REVIEW_SEQ_GENERATOR")
	@Column(name = "REV_NO")
	private int revNo;
	
	@Column(name = "REV_TITLE")
	private String revTitle;
	
	@Column(name = "REV_CONTENT")
	private String revContent;
	
	@Column(name = "REV_CRE_DATE")
	private java.sql.Date revCreDate;
	
	@Column(name = "PLACE_NO")
	private int placeNo;
	
	@Column(name = "REV_VIEWS")
	private int revViews;
	
	@Column(name = "USERS_ID")
	private String usersId;

	@Column(name = "USER_NICKNAME")
	private String userNickname;
	
	@Column(name = "PLACE_NAME")
	private String placeName;

	@Column(name = "P_IMAGE_URL")
	private String pImageUrl;

	public TravelReview() {
		super();
	}

	public TravelReview(int revNo, String revTitle, String revContent, Date revCreDate, int placeNo, int revViews,
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
		return "TravelReview [revNo=" + revNo + ", revTitle=" + revTitle + ", revContent=" + revContent
				+ ", revCreDate=" + revCreDate + ", placeNo=" + placeNo + ", revViews=" + revViews + ", usersId="
				+ usersId + ", userNickname=" + userNickname + ", placeName=" + placeName + ", pImageUrl=" + pImageUrl
				+ "]";
	}


}
