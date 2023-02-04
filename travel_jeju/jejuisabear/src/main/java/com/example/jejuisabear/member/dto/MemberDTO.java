package com.example.jejuisabear.member.dto;

import java.sql.Timestamp;
import java.util.Date;

public class MemberDTO {
	
	private int userNo;
	private String id;
	private String pwd;
	private String nickname;
	private String phoneNumber;
	private String email;
	private String auth;
	private Timestamp entDate;
	private Timestamp latestConnectDate;
	private Timestamp pwdChangeDate;
	private Timestamp PwdUptoDate;
	private int conFailedNum;
	private String delStat = "N";
	private String mateJoin = "N";
	public MemberDTO() {
	}
	public MemberDTO(int userNo, String id, String pwd, String nickname, String phoneNumber, String email, String auth,
			Timestamp entDate, Timestamp latestConnectDate, Timestamp pwdChangeDate, Timestamp pwdUptoDate,
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
		PwdUptoDate = pwdUptoDate;
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
		return PwdUptoDate;
	}
	public void setPwdUptoDate(Timestamp pwdUptoDate) {
		PwdUptoDate = pwdUptoDate;
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
		return "MemberDTO [userNo=" + userNo + ", id=" + id + ", pwd=" + pwd + ", nickname=" + nickname
				+ ", phoneNumber=" + phoneNumber + ", email=" + email + ", auth=" + auth + ", entDate=" + entDate
				+ ", latestConnectDate=" + latestConnectDate + ", pwdChangeDate=" + pwdChangeDate + ", PwdUptoDate="
				+ PwdUptoDate + ", conFailedNum=" + conFailedNum + ", delStat=" + delStat + ", mateJoin=" + mateJoin
				+ "]";
	}
	
	
}
