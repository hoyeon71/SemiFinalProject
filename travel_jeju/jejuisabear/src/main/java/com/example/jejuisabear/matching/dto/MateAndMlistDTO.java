package com.example.jejuisabear.matching.dto;

import java.util.List;

import com.example.jejuisabear.matching.entity.Mlist;

public class MateAndMlistDTO {
	private int mapNo;
	private String markerName;
	private Double mapLatitude;
	private Double mapLongitude;
	private List<Mlist> mlists;
	public MateAndMlistDTO() {
	}
	public MateAndMlistDTO(int mapNo, String markerName, Double mapLatitude, Double mapLongitude, List<Mlist> mlists) {
		this.mapNo = mapNo;
		this.markerName = markerName;
		this.mapLatitude = mapLatitude;
		this.mapLongitude = mapLongitude;
		this.mlists = mlists;
	}
	public int getMapNo() {
		return mapNo;
	}
	public void setMapNo(int mapNo) {
		this.mapNo = mapNo;
	}
	public String getMarkerName() {
		return markerName;
	}
	public void setMarkerName(String markerName) {
		this.markerName = markerName;
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
	public List<Mlist> getMlists() {
		return mlists;
	}
	public void setMlists(List<Mlist> mlists) {
		this.mlists = mlists;
	}
	@Override
	public String toString() {
		return "MateAndMlistDTO [mapNo=" + mapNo + ", markerName=" + markerName + ", mapLatitude=" + mapLatitude
				+ ", mapLongitude=" + mapLongitude + ", mlists=" + mlists + "]";
	}
	
	
}
