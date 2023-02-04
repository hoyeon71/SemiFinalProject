package com.example.jejuisabear.travel.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity(name="ImageEntity")
@Table(name="PLACE_IMAGES")
@SequenceGenerator(
					name = "PLACE_IMAGES_SEQ_GENERATOR",
					sequenceName = "SEQ_PLACE_IMAGES_CODE",
					initialValue = 1,
					allocationSize = 1
)

public class ImageEntity {
	
	@Id
	@GeneratedValue(
					strategy = GenerationType.SEQUENCE,
					generator = "PLACE_IMAGES_SEQ_GENERATOR"
	)
	
	@Column(name = "P_IMAGE_NO")
	private int placeImageNo;
	
	@Column(name = "P_IMAGE_URL")
	private String placeImageUrl;
	
	@Column(name = "P_IMAGE_STAT")
	private String placeImageStat;
	
	@Column(name = "PLACE_NO")
	private int placeNo;

	public ImageEntity() {
		super();
	}

	public ImageEntity(int placeImageNo, String placeImageUrl, String placeImageStat, int placeNo) {
		super();
		this.placeImageNo = placeImageNo;
		this.placeImageUrl = placeImageUrl; 
		this.placeImageStat = placeImageStat;
		this.placeNo = placeNo;
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

	public String getPlaceImageStat() {
		return placeImageStat;
	}

	public void setPlaceImageStat(String placeImageStat) {
		this.placeImageStat = placeImageStat;
	}

	public int getPlaceNo() {
		return placeNo;
	}

	public void setPlaceNo(int placeNo) {
		this.placeNo = placeNo;
	}

	@Override
	public String toString() {
		return "ImageEntity [placeImageNo=" + placeImageNo + ", placeImageUrl=" + placeImageUrl + ", placeImageStat="
				+ placeImageStat + ", placeNo=" + placeNo + "]";
	}

	

	
}