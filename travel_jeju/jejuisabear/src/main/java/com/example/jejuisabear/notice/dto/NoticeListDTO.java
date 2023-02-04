package com.example.jejuisabear.notice.dto;

public class NoticeListDTO {
	
	private String noticelistTitle;
	private String noticelistAdmin;
	private int noticelistNo;
	private String noticelistDate;
	private int noticelistViews;
	
	public NoticeListDTO() {
	}

	public NoticeListDTO(String noticelistTitle, String noticelistAdmin, int noticelistNo, String noticelistDate,
			int noticelistViews) {
		super();
		this.noticelistTitle = noticelistTitle;
		this.noticelistAdmin = noticelistAdmin;
		this.noticelistNo = noticelistNo;
		this.noticelistDate = noticelistDate;
		this.noticelistViews = noticelistViews;
	}

	public String getNoticelistTitle() {
		return noticelistTitle;
	}

	public void setNoticelistTitle(String noticelistTitle) {
		this.noticelistTitle = noticelistTitle;
	}

	public String getNoticelistAdmin() {
		return noticelistAdmin;
	}

	public void setNoticelistAdmin(String noticelistAdmin) {
		this.noticelistAdmin = noticelistAdmin;
	}

	public int getNoticelistNo() {
		return noticelistNo;
	}

	public void setNoticelistNo(int noticelistNo) {
		this.noticelistNo = noticelistNo;
	}

	public String getNoticelistDate() {
		return noticelistDate;
	}

	public void setNoticelistDate(String noticelistDate) {
		this.noticelistDate = noticelistDate;
	}

	public int getNoticelistViews() {
		return noticelistViews;
	}

	public void setNoticelistViews(int noticelistViews) {
		this.noticelistViews = noticelistViews;
	}

	@Override
	public String toString() {
		return "NoticeListDTO [noticelistTitle=" + noticelistTitle + ", noticelistAdmin=" + noticelistAdmin
				+ ", noticelistNo=" + noticelistNo + ", noticelistDate=" + noticelistDate + ", noticelistViews="
				+ noticelistViews + "]";
	}
	
}
