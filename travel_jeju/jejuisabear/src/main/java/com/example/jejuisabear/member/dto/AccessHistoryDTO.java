package com.example.jejuisabear.member.dto;

import java.sql.Timestamp;

public class AccessHistoryDTO {

	private int conNo;
	private String id;
	private Timestamp conDate;
	
	public AccessHistoryDTO() {
		super();
	}

	public AccessHistoryDTO(int conNo, String id, Timestamp conDate) {
		super();
		this.conNo = conNo;
		this.id = id;
		this.conDate = conDate;
	}

	public int getConNo() {
		return conNo;
	}

	public String getId() {
		return id;
	}

	public Timestamp getConDate() {
		return conDate;
	}

	public void setConNo(int conNo) {
		this.conNo = conNo;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setConDate(Timestamp conDate) {
		this.conDate = conDate;
	}

	@Override
	public String toString() {
		return "AccessHistoryDTO [conNo=" + conNo + ", id=" + id + ", conDate=" + conDate + "]";
	}
	
	
}
