package com.example.jejuisabear.travel.dto;

public class TravelDTO {
	
	private int placeNo;
	private String placeName;
	private String placeAddress;
	private String placeDesc;
	private String placeDelStat;
	public TravelDTO() {
		super();
	}
	public TravelDTO(int placeNo, String placeName, String placeAddress, String placeDesc, String placeDelStat) {
		super();
		this.placeNo = placeNo;
		this.placeName = placeName;
		this.placeAddress = placeAddress;
		this.placeDesc = placeDesc;
		this.placeDelStat = placeDelStat;
	}
	public int getPlaceNo() {
		return placeNo;
	}
	public void setPlaceNo(int placeNo) {
		this.placeNo = placeNo;
	}
	public String getPlaceName() {
		return placeName;
	}
	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
	public String getPlaceAddress() {
		return placeAddress;
	}
	public void setPlaceAddress(String placeAddress) {
		this.placeAddress = placeAddress;
	}
	public String getPlaceDesc() {
		return placeDesc;
	}
	public void setPlaceDesc(String placeDesc) {
		this.placeDesc = placeDesc;
	}
	public String getPlaceDelStat() {
		return placeDelStat;
	}
	public void setPlaceDelStat(String placeDelStat) {
		this.placeDelStat = placeDelStat;
	}
	@Override
	public String toString() {
		return "TravelDTO [placeNo=" + placeNo + ", placeName=" + placeName + ", placeAddress=" + placeAddress
				+ ", placeDesc=" + placeDesc + ", placeDelStat=" + placeDelStat + "]";
	}

	
}