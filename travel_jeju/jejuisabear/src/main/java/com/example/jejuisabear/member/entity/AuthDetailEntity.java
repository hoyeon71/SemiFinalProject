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

@Entity(name="AuthDetail")
@Table(name="AUTHORITY_DETAIL")
@SequenceGenerator(
					name = "AUTHDETAIL_SEQ_GENERATOR",
					sequenceName = "AUTHORITY_DETAIL_SEQ",
					initialValue = 1,
					allocationSize = 1
)

public class AuthDetailEntity {
	
	@Id
	@Column(name = "USER_NO")
	private int userNo;
	
	@Column(name = "AUTHORITY_NO")
	private int authNo;

	public AuthDetailEntity() {
		super();
	}

	public AuthDetailEntity(int userNo, int authNo) {
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
