package com.example.jejuisabear.member.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity(name="USERS")
@Table(name="USERS")
@SequenceGenerator(
					name = "USERS_SEQ_GENERATOR",
					sequenceName = "USERS_SEQ",
					initialValue = 1,
					allocationSize = 1
)
public class MemberEntity {
	
	@Id
	@GeneratedValue(
					strategy = GenerationType.SEQUENCE,
					generator = "USERS_SEQ_GENERATOR"
	)
	@Column(name = "USER_NO")
	private int userNo;
	
	@Column(name = "USER_ID")
	private String id;
	
	@Column(name = "USER_PWD")
	private String pwd;
	
	@Column(name = "USER_NICKNAME")
	private String nickname;
	
	@Column(name = "USER_PHONENUMBER")
	private String phoneNumber;
	
	@Column(name = "USER_EMAIL")
	private String email;
	
	@Column(name = "USER_AUTHORITY")
	private String auth;
	
	@Column(name = "USER_ENT_DATE")
	private Timestamp entDate;
	
	@Column(name = "USER_LATEST_CONNECT_DATE")
	private Timestamp latestConnectDate;
	
	@Column(name = "USER_PWD_CHANGE_DATE")
	private Timestamp pwdChangeDate;
	
	@Column(name = "USER_PWD_UPTO_DATE")
	private Timestamp pwdUptoDate;
	
	@Column(name = "USER_CON_FAILED_NUM")
	private int conFailedNum;
	
	@Column(name = "USER_DEL_STAT")
	private String delStat;
	
	@Column(name = "MATE_JOIN")
	private String mateJoin;

	public MemberEntity() {
	}

	public MemberEntity(int userNo, String id, String pwd, String nickname, String phoneNumber, String email,
			String auth, Timestamp entDate, Timestamp latestConnectDate, Timestamp pwdChangeDate, Timestamp pwdUptoDate,
			int conFailedNum, String delStat, String mateJoin) {
		this.userNo = userNo;
		this.id = id;
		this.pwd = pwd;
		this.nickname = nickname;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.auth = auth;
		this.entDate = entDate;
		this.latestConnectDate = latestConnectDate;
		this.pwdChangeDate = pwdChangeDate;
		this.pwdUptoDate = pwdUptoDate;
		this.conFailedNum = conFailedNum;
		this.delStat = delStat;
		this.mateJoin = mateJoin;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

	public Timestamp getEntDate() {
		return entDate;
	}

	public void setEntDate(Timestamp entDate) {
		this.entDate = entDate;
	}

	public Timestamp getLatestConnectDate() {
		return latestConnectDate;
	}

	public void setLatestConnectDate(Timestamp latestConnectDate) {
		this.latestConnectDate = latestConnectDate;
	}

	public Timestamp getPwdChangeDate() {
		return pwdChangeDate;
	}

	public void setPwdChangeDate(Timestamp pwdChangeDate) {
		this.pwdChangeDate = pwdChangeDate;
	}

	public Timestamp getPwdUptoDate() {
		return pwdUptoDate;
	}

	public void setPwdUptoDate(Timestamp pwdUptoDate) {
		this.pwdUptoDate = pwdUptoDate;
	}

	public int getConFailedNum() {
		return conFailedNum;
	}

	public void setConFailedNum(int conFailedNum) {
		this.conFailedNum = conFailedNum;
	}

	public String getDelStat() {
		return delStat;
	}

	public void setDelStat(String delStat) {
		this.delStat = delStat;
	}

	public String getMateJoin() {
		return mateJoin;
	}

	public void setMateJoin(String mateJoin) {
		this.mateJoin = mateJoin;
	}

	@Override
	public String toString() {
		return "MemberEntity [userNo=" + userNo + ", id=" + id + ", pwd=" + pwd + ", nickname=" + nickname
				+ ", phoneNumber=" + phoneNumber + ", email=" + email + ", auth=" + auth + ", entDate=" + entDate
				+ ", latestConnectDate=" + latestConnectDate + ", pwdChangeDate=" + pwdChangeDate + ", pwdUptoDate="
				+ pwdUptoDate + ", conFailedNum=" + conFailedNum + ", delStat=" + delStat + ", mateJoin=" + mateJoin
				+ "]";
	}
	
		
}
