package com.example.jejuisabear.matching.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity(name = "Mate")
@Table(name = "MATCHING_MAP")
public class Mate {
	
	@Id
	@Column(name = "MARKER_NAME")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String markerName;
	
	@Column(name = "MAP_NO")
	private int mapNo;

	@Column(name = "MAP_LATITUDE")
	private Double mapLatitude;
	
	@Column(name = "MAP_LONGITUDE")
	private Double mapLongitude;
	
	@OneToMany
	@JoinColumn(name = "MATE_PLACE")
	private List<Mlist> mlists;

	public Mate() {
	}

	public Mate(String markerName, int mapNo, Double mapLatitude, Double mapLongitude, List<Mlist> mlists) {
		this.markerName = markerName;
		this.mapNo = mapNo;
		this.mapLatitude = mapLatitude;
		this.mapLongitude = mapLongitude;
		this.mlists = mlists;
	}

	public String getMarkerName() {
		return markerName;
	}

	public void setMarkerName(String markerName) {
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

	public List<Mlist> getMlists() {
		return mlists;
	}

	public void setMlists(List<Mlist> mlists) {
		this.mlists = mlists;
	}

	@Override
	public String toString() {
		return "Mate [markerName=" + markerName + ", mapNo=" + mapNo + ", mapLatitude=" + mapLatitude
				+ ", mapLongitude=" + mapLongitude + ", mlists=" + mlists + "]";
	}
	
	
}
