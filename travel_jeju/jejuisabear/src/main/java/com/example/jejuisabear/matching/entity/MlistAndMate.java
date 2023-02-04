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

@Entity(name="MlistAndMate")
@Table(name ="MATE_LIST")
public class MlistAndMate implements java.io.Serializable{
	private static final long serialVersionUID = -1892285409450991385L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
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
	
	@Column(name = "MAP_NO")
	private int mapNo;
	
	@Column(name = "MATE_CONTENT")
	private String mateContent;
	
	@Column(name = "MATE_JOIN")
	private String mateJoin;	
	
	@OneToMany
	@JoinColumn(name = "MAP_NO")
	private List<Mate> placeList = new ArrayList<>();

	public MlistAndMate() {
	}

	public MlistAndMate(int listNo, String matePlace, int mateMember, int mateTime, String mateDate, int mateCharge,
			int mapNo, String mateContent, String mateJoin, List<Mate> placeList) {
		this.listNo = listNo;
		this.matePlace = matePlace;
		this.mateMember = mateMember;
		this.mateTime = mateTime;
		this.mateDate = mateDate;
		this.mateCharge = mateCharge;
		this.mapNo = mapNo;
		this.mateContent = mateContent;
		this.mateJoin = mateJoin;
		this.placeList = placeList;
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

	public List<Mate> getPlaceList() {
		return placeList;
	}

	public void setPlaceList(List<Mate> placeList) {
		this.placeList = placeList;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "MlistAndMate [listNo=" + listNo + ", matePlace=" + matePlace + ", mateMember=" + mateMember
				+ ", mateTime=" + mateTime + ", mateDate=" + mateDate + ", mateCharge=" + mateCharge + ", mapNo="
				+ mapNo + ", mateContent=" + mateContent + ", mateJoin=" + mateJoin + ", placeList=" + placeList
				+ "]";
	}
	
	
}
