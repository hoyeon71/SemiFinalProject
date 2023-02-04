package com.example.jejuisabear.matching.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity(name = "com.example.jejuisabear.matching.entity")
@Table(name = "MATCHING_MAP")
public class MateAndMlist implements java.io.Serializable{
	private static final long serialVersionUID = 4411273379662875977L;
	
	
	@Id
	@Column(name = "MAP_NO")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int mapNo;
	
	@Column(name = "MARKER_NAME")
	private String markerName;

	@Column(name = "MAP_LATITUDE")
	private Double mapLatitude;
	
	@Column(name = "MAP_LONGITUDE")
	private Double mapLongitude;
	
	@OneToMany
	@JoinColumn(name = "MAP_NO")
	private List<Mlist> mlists = new ArrayList<>();

	public MateAndMlist() {
	}

	public MateAndMlist(String markerName, int mapNo, Double mapLatitude, Double mapLongitude, List<Mlist> mlists) {
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "MateAndMlist [markerName=" + markerName + ", mapNo=" + mapNo + ", mapLatitude=" + mapLatitude
				+ ", mapLongitude=" + mapLongitude + ", mlists=" + mlists + "]";
	}
	

	
	
}
