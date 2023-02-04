package com.example.jejuisabear.notice.dto;

public class NoticeDTO {
	
	private String noticeTitle;
	private String noticeAdmin;
	private String noticeInsert;
	private int noticeViews;
	private String noticeDate;
	private int noticeNo;
	
	public NoticeDTO() {
	}

	public NoticeDTO(String noticeTitle, String noticeAdmin, String noticeInsert, int noticeViews, String noticeDate,
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
		return "NoticeDTO [noticeTitle=" + noticeTitle + ", noticeAdmin=" + noticeAdmin + ", noticeInsert="
				+ noticeInsert + ", noticeViews=" + noticeViews + ", noticeDate=" + noticeDate + ", noticeNo="
				+ noticeNo + "]";
	}
}
