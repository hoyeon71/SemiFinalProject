package com.example.jejuisabear.matching.dto;

public class MlistDTO {
	
	private int listNo;
	private String matePlace;
	private int mateMember;
	private int mateTime;
	private String mateDate;
	private int mateCharge;
	private int mateViews;
	private int mapNo;
	private String mateContent;
	private String mateJoin;
	private String nickName;
	public MlistDTO() {
	}
	public MlistDTO(int listNo, String matePlace, int mateMember, int mateTime, String mateDate, int mateCharge,
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
		return "MlistDTO [listNo=" + listNo + ", matePlace=" + matePlace + ", mateMember=" + mateMember + ", mateTime="
				+ mateTime + ", mateDate=" + mateDate + ", mateCharge=" + mateCharge + ", mateViews=" + mateViews
				+ ", mapNo=" + mapNo + ", mateContent=" + mateContent + ", mateJoin=" + mateJoin + ", nickName="
				+ nickName + "]";
	}
	
	
	
}
