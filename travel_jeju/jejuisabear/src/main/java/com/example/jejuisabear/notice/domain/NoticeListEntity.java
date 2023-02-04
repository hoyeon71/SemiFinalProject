package com.example.jejuisabear.notice.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity(name = "NoticeListEntity")
@Table(name = "NOTICE_LIST")
@SequenceGenerator  (
		name = "NOTICE_LIST_SEQ_GENREATOR",
		sequenceName = "USERS_SEQ",
		initialValue = 1,
		allocationSize = 1
)
public class NoticeListEntity {
	
	@Id
	@GeneratedValue(
			strategy = GenerationType.SEQUENCE,
			generator = "NOTICE_LIST_SEQ_GENERATOR"
	)
	@Column(name = "NOTICELIST_TITLE")
	private String noticelistTitle;
	
	@Column(name = "NOTICELIST_ADMIN")
	private String noticelistAdmin;
	
	@Column(name = "NOTICELIST_NO")
	private int noticelistNo;
	
	@Column(name = "NOTICELIST_DATE")
	private String noticelistDate;
	
	@Column(name = "NOTICELIST_VIEWS")
	private int noticelistViews;
	
	public NoticeListEntity() {
	}

	public NoticeListEntity(String noticelistTitle, String noticelistAdmin, int noticelistNo, String noticelistDate,
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
		return "NoticeListEntity [noticelistTitle=" + noticelistTitle + ", noticelistAdmin=" + noticelistAdmin
				+ ", noticelistNo=" + noticelistNo + ", noticelistDate=" + noticelistDate + ", noticelistViews="
				+ noticelistViews + "]";
	}
}
