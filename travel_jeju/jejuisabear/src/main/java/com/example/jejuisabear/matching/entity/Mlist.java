package com.example.jejuisabear.matching.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity(name = "Mlist")
@Table(name = "MATE_LIST")
@SequenceGenerator(
		name = "LIST_SEQ_GENERATOR",
		sequenceName = "LIST_NO_SEQ",
		initialValue = 1,
		allocationSize = 1
)
public class Mlist {
	
	@Id
	@GeneratedValue(
			strategy = GenerationType.SEQUENCE,
			generator = "LIST_SEQ_GENERATOR"
	)
	@Column(name = "LIST_NO")
	private int listNo;

	@Column(name = "MATE_PLACE")
	private String matePlace;
	
	@Column(name = "MATE_MEMBER")
	private int mateMember;
	
	@Column(name = "MATE_TIME")
	private int mateTime;
	
	@Column(name = "MATE_DATE")
	private String mateDate;
	
	@Column(name = "MATE_CHARGE")
	private int mateCharge;
	
	@Column(name = "MATE_VIEWS")
	private int mateViews;
	
	@Column(name = "MAP_NO")
	private int mapNo;
	
	@Column(name = "MATE_CONTENT")
	private String mateContent;
	
	@Column(name = "MATE_JOIN")
	private String mateJoin;
	
	@Column(name = "NICK_NAME")
	private String nickName;

	public Mlist() {
	}

	public Mlist(int listNo, String matePlace, int mateMember, int mateTime, String mateDate, int mateCharge,
			int mateViews, int mapNo, String mateContent, String mateJoin, String nickName) {
		this.listNo = listNo;
		this.matePlace = matePlace;
		this.mateMember = mateMember;
		this.mateTime = mateTime;
		this.mateDate = mateDate;
		this.mateCharge = mateCharge;
		this.mateViews = mateViews;
		this.mapNo = mapNo;
		this.mateContent = mateContent;
		this.mateJoin = mateJoin;
		this.nickName = nickName;
	}

	public int getListNo() {
		return listNo;
	}

	public void setListNo(int listNo) {
		this.listNo = listNo;
	}

	public String getMatePlace() {
		return matePlace;
	}

	public void setMatePlace(String matePlace) {
		this.matePlace = matePlace;
	}

	public int getMateMember() {
		return mateMember;
	}

	public void setMateMember(int mateMember) {
		this.mateMember = mateMember;
	}

	public int getMateTime() {
		return mateTime;
	}

	public void setMateTime(int mateTime) {
		this.mateTime = mateTime;
	}

	public String getMateDate() {
		return mateDate;
	}

	public void setMateDate(String mateDate) {
		this.mateDate = mateDate;
	}

	public int getMateCharge() {
		return mateCharge;
	}

	public void setMateCharge(int mateCharge) {
		this.mateCharge = mateCharge;
	}

	public int getMateViews() {
		return mateViews;
	}

	public void setMateViews(int mateViews) {
		this.mateViews = mateViews;
	}

	public int getMapNo() {
		return mapNo;
	}

	public void setMapNo(int mapNo) {
		this.mapNo = mapNo;
	}

	public String getMateContent() {
		return mateContent;
	}

	public void setMateContent(String mateContent) {
		this.mateContent = mateContent;
	}

	public String getMateJoin() {
		return mateJoin;
	}

	public void setMateJoin(String mateJoin) {
		this.mateJoin = mateJoin;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	@Override
	public String toString() {
		return "Mlist [listNo=" + listNo + ", matePlace=" + matePlace + ", mateMember=" + mateMember + ", mateTime="
				+ mateTime + ", mateDate=" + mateDate + ", mateCharge=" + mateCharge + ", mateViews=" + mateViews
				+ ", mapNo=" + mapNo + ", mateContent=" + mateContent + ", mateJoin=" + mateJoin + ", nickName="
				+ nickName + "]";
	}

	
}
