package com.example.jejuisabear.member.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity(name="ACCESS_HISTORY")
@Table(name="CONNECT_DETAIL")
@SequenceGenerator(
					name = "ACCESSHISTORY_SEQ_GENERATOR",
					sequenceName = "CONNECT_DETAIL_SEQ1",
					initialValue = 1,
					allocationSize = 1
)
public class AccessHistoryEntity {
	
	@Id
	@GeneratedValue(
					strategy = GenerationType.SEQUENCE,
					generator = "ACCESSHISTORY_SEQ_GENERATOR"
	)
	@Column(name = "CON_NO")
	private int conNo;
	
	@Column(name = "USERS_ID")
	private String id;
	
	@Column(name = "CON_DATE")
	private Timestamp conDate;

	public AccessHistoryEntity() {
		super();
	}

	public AccessHistoryEntity(int conNo, String id, Timestamp conDate) {
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
		return "AccessHistoryEntity [conNo=" + conNo + ", id=" + id + ", conDate=" + conDate + "]";
	}
	
	
	
}