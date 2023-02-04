package com.example.jejuisabear.member.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity(name="AuthAndAuthDetail")
@Table(name="AUTHORITY")
@SequenceGenerator(
					name = "AUTH_SEQ_GENERATOR",
					sequenceName = "SEQ_AUTH_CODE",
					initialValue = 1,
					allocationSize = 1
)

public class AuthAndAuthDetailEntity {
	


	@Id
	@GeneratedValue(
					strategy = GenerationType.SEQUENCE,
					generator = "AUTH_SEQ_GENERATOR"
	)
	@Column(name = "AUTHORITY_NO")
	private int authNo;
	
	@Column(name = "AUTHORITY_NAME")
	private String authName;

	@OneToMany(mappedBy="authNo")
	private List<AuthDetailAndAuthEntity> AuthDetailList = new ArrayList<>();

	public AuthAndAuthDetailEntity() {
		super();
	}

	public AuthAndAuthDetailEntity(int authNo, String authName, List<AuthDetailAndAuthEntity> authDetailList) {
		super();
		this.authNo = authNo;
		this.authName = authName;
//		AuthDetailList = authDetailList;
	}

	public int getAuthNo() {
		return authNo;
	}

	public String getAuthName() {
		return authName;
	}

//	public List<AuthDetailAndAuthEntity> getAuthDetailList() {
//		return AuthDetailList;
//	}

	public void setAuthNo(int authNo) {
		this.authNo = authNo;
	}

	public void setAuthName(String authName) {
		this.authName = authName;
	}

//	public void setAuthDetailList(List<AuthDetailAndAuthEntity> authDetailList) {
//		AuthDetailList = authDetailList;
//	}

	@Override
	public String toString() {
		return "AuthAndAuthDetailEntity [authNo=" + authNo + ", authName=" + authName + ", AuthDetailList="
				+ "" + "]";
	}
	
	
}
