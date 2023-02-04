package com.example.jejuisabear.travel.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity(name="TravelEntity")
@Table(name="JEJU_PLACE")
@SequenceGenerator(
					name = "JEJUPLACE_SEQ_GENERATOR",
					sequenceName = "JEJU_PLACE_SEQ",
					initialValue = 1,
					allocationSize = 1
)

public class TravelEntity {
	
	@Id
	@GeneratedValue(
					strategy = GenerationType.SEQUENCE,
					generator = "JEJUPLACE_SEQ_GENERATOR"
	)
	@Column(name = "PLACE_NO")
	private int placeNo;
	
	@Column(name = "PLACE_NAME")
	private String placeName;
	
	@Column(name = "PLACE_ADDRESS")
	private String placeAddress;
	
	@Column(name = "PLACE_DESC")
	private String placeDesc;
	
	@Column(name = "PLACE_DEL_STAT")
	private String placeDelStat;

	public TravelEntity() {}

	public TravelEntity(int placeNo, String placeName, String placeAddress, String placeDesc, String placeDelStat) {
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
		return "TravelEntity [placeNo=" + placeNo + ", placeName=" + placeName + ", placeAddress=" + placeAddress
				+ ", placeDesc=" + placeDesc + ", placeDelStat=" + placeDelStat + "]";
	}

	
}
