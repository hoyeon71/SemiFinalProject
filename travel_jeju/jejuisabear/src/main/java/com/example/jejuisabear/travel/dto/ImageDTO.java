package com.example.jejuisabear.travel.dto;

public class ImageDTO {
	
	private int placeImageNo;
	private String placeImageUrl;
	private String placeIMAGEStat;
	private int placeNo;
	
	public ImageDTO() {
	}
	
	public int getPlaceImageNo() {
		return placeImageNo;
	}
	public void setPlaceImageNo(int placeImageNo) {
		this.placeImageNo = placeImageNo;
	}
	public String getPlaceImageUrl() {
		return placeImageUrl;
	}
	public void setPlaceImageUrl(String placeImageUrl) {
		this.placeImageUrl = placeImageUrl;
	}
	public String getPlaceIMAGEStat() {
		return placeIMAGEStat;
	}
	public void setPlaceIMAGEStat(String placeIMAGEStat) {
		this.placeIMAGEStat = placeIMAGEStat;
	}
	public int getPlaceNo() {
		return placeNo;
	}
	public void setPlaceNo(int placeNo) {
		this.placeNo = placeNo;
	}
	
	public ImageDTO(int placeImageNo, String placeImageUrl, String placeIMAGEStat, int placeNo) {
		super();
		this.placeImageNo = placeImageNo;
		this.placeImageUrl = placeImageUrl;
		this.placeIMAGEStat = placeIMAGEStat;
		this.placeNo = placeNo;
	}
	
	@Override
	public String toString() {
		return "ImageDTO [placeImageNo=" + placeImageNo + ", placeImageUrl=" + placeImageUrl + ", placeIMAGEStat="
				+ placeIMAGEStat + ", placeNo=" + placeNo + "]";
	}
	
}