package com.example.jejuisabear.matching.dto;

public class MateDTO {
	
	private int mapNo;
	private Double mapLatitude;
	private Double mapLongitude;
	private String markerName;
	
	public MateDTO() {
	}
	public MateDTO(int mapNo, Double mapLatitude, Double mapLongitude, String markerName) {
		this.mapNo = mapNo;
		this.mapLatitude = mapLatitude;
		this.mapLongitude = mapLongitude;
		this.markerName = markerName;
	}
	public int getMapNo() {
		return mapNo;
	}
	public void setMapNo(int mapNo) {
		this.mapNo = mapNo;
	}
	public Double getMapLatitude() {
		return mapLatitude;
	}
	public void setMapLatitude(Double mapLatitude) {
		this.mapLatitude = mapLatitude;
	}
	public Double getMapLongitude() {
		return mapLongitude;
	}
	public void setMapLongitude(Double mapLongitude) {
		this.mapLongitude = mapLongitude;
	}
	public String getMarkerName() {
		return markerName;
	}
	public void setMarkerName(String markerName) {
		this.markerName = markerName;
	}
	@Override
	public String toString() {
		return "MateDTO [mapNo=" + mapNo + ", mapLatitude=" + mapLatitude + ", mapLongitude=" + mapLongitude
				+ ", markerName=" + markerName + "]";
	}
	
}
