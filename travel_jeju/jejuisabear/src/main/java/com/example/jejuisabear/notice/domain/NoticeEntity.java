package com.example.jejuisabear.notice.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity(name = "NoticeEntity")
@Table(name = "NOTICE")
@SequenceGenerator(
        name = "NOTICE_SEQ_GENERATOR",
        sequenceName = "USERS_SEQ",
        initialValue = 1,
        allocationSize = 1
)
public class NoticeEntity {
	
	@Id
    @GeneratedValue(
           strategy = GenerationType.SEQUENCE,
           generator = "NOTICE_SEQ_GENERATOR"
    )
	@Column(name = "NOTICE_NO")
	private int noticeNo;
	
	@Column(name = "NOTICE_TITLE")
	private String noticeTitle;
	
	
	@Column(name = "NOTICE_ADMIN")
	private String noticeAdmin;
	
	@Column(name = "NOTICE_INSERT")
	private String noticeInsert;
	
	@Column(name = "NOTICE_VIEWS")
	private int noticeViews;
	
	@Column(name = "NOTICE_DATE")
	private String noticeDate;
	

	
	public NoticeEntity() {
	}

	public NoticeEntity(String noticeTitle, String noticeAdmin, String noticeInsert, int noticeViews, String noticeDate,
			int noticeNo) {
		super();
		this.noticeTitle = noticeTitle;
		this.noticeAdmin = noticeAdmin;
		this.noticeInsert = noticeInsert;
		this.noticeViews = noticeViews;
		this.noticeDate = noticeDate;
		this.noticeNo = noticeNo;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeAdmin() {
		return noticeAdmin;
	}

	public void setNoticeAdmin(String noticeAdmin) {
		this.noticeAdmin = noticeAdmin;
	}

	public String getNoticeInsert() {
		return noticeInsert;
	}

	public void setNoticeInsert(String noticeInsert) {
		this.noticeInsert = noticeInsert;
	}

	public int getNoticeViews() {
		return noticeViews;
	}

	public void setNoticeViews(int noticeViews) {
		this.noticeViews = noticeViews;
	}

	public String getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(String noticeDate) {
		this.noticeDate = noticeDate;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	@Override
	public String toString() {
		return "NoticeEntity [noticeTitle=" + noticeTitle + ", noticeAdmin=" + noticeAdmin + ", noticeInsert="
				+ noticeInsert + ", noticeViews=" + noticeViews + ", noticeDate=" + noticeDate + ", noticeNo="
				+ noticeNo + "]";
	}

}