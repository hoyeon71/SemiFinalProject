package com.example.jejuisabear.member.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity(name="AuthDetailAndAuth")
@Table(name="AUTHORITY_DETAIL")
@SequenceGenerator(
					name = "AUTHDETAIL_SEQ_GENERATOR",
					sequenceName = "SEQ_AUTHDETAIL_CODE",
					initialValue = 1,
					allocationSize = 1
)

public class AuthDetailAndAuthEntity {
	
	@Id
	@GeneratedValue(
					strategy = GenerationType.SEQUENCE,
					generator = "AUTHDETAIL_SEQ_GENERATOR"
	)
	@Column(name = "USER_NO")
	private int userNo;
	
	@ManyToOne(targetEntity = AuthAndAuthDetailEntity.class)
	@JoinColumn(name = "AUTHORITY_NO")
	private int authNo;

	public AuthDetailAndAuthEntity() {
		super();
	}

	public AuthDetailAndAuthEntity(int userNo, int authNo) {
		super();
		this.userNo = userNo;
		this.authNo = authNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public int getAuthNo() {
		return authNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public void setAuthNo(int authNo) {
		this.authNo = authNo;
	}

	@Override
	public String toString() {
		return "AuthDetailAndAuthEntity [userNo=" + userNo + ", authNo=" + authNo + "]";
	}

	
	
}
