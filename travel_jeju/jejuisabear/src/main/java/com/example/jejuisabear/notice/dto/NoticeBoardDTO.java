package com.example.jejuisabear.notice.dto;

public class NoticeBoardDTO {
	
	private String noticeboardAdmin;
	private String noticeboardDate;
	private String noticeboardInsert;
	private String noticeboardTitle;
	
	public NoticeBoardDTO() {
		
	}

	public NoticeBoardDTO(String noticeboardAdmin, String noticeboardDate, String noticeboardInsert,
			String noticeboardTitle) {
		super();
		this.noticeboardAdmin = noticeboardAdmin;
		this.noticeboardDate = noticeboardDate;
		this.noticeboardInsert = noticeboardInsert;
		this.noticeboardTitle = noticeboardTitle;
	}

	public String getNoticeboardAdmin() {
		return noticeboardAdmin;
	}

	public void setNoticeboardAdmin(String noticeboardAdmin) {
		this.noticeboardAdmin = noticeboardAdmin;
	}

	public String getNoticeboardDate() {
		return noticeboardDate;
	}

	public void setNoticeboardDate(String noticeboardDate) {
		this.noticeboardDate = noticeboardDate;
	}

	public String getNoticeboardInsert() {
		return noticeboardInsert;
	}

	public void setNoticeboardInsert(String noticeboardInsert) {
		this.noticeboardInsert = noticeboardInsert;
	}

	public String getNoticeboardTitle() {
		return noticeboardTitle;
	}

	public void setNoticeboardTitle(String noticeboardTitle) {
		this.noticeboardTitle = noticeboardTitle;
	}

	@Override
	public String toString() {
		return "NoticeBoardDTO [noticeboardAdmin=" + noticeboardAdmin + ", noticeboardDate=" + noticeboardDate
				+ ", noticeboardInsert=" + noticeboardInsert + ", noticeboardTitle=" + noticeboardTitle + "]";
	}
}
