package com.example.jejuisabear.notice.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity(name = "NoticeBoardEntity")
@Table(name= "NOTICE_BOARD")
@SequenceGenerator(
        name = "NOTICE_BOARD_SEQ_GENERATOR",
        sequenceName = "NOTICE_BOARD_SEQ",
        initialValue = 1,
        allocationSize = 1
)
public class NoticeBoardEntity {

	@Id
	@GeneratedValue(
			strategy = GenerationType.SEQUENCE,
			generator = "NOTICE_BOARD_SEQ_GENERATOR"
	)
	
	@Column(name = "NOBOARD_ADMIN")
	private String noticeboardAdmin;
	
	@Column(name = "NOBOARD_DATE")
	private String noticeboardDate;
	
	@Column(name = "NOBOARD_INSERT")
	private String noticeboardInsert;
	
	@Column(name = "NOBOARD_TITLE")
	private String noticeboardTitle;
	
	public NoticeBoardEntity() {
		
	}

	public NoticeBoardEntity(String noticeboardAdmin, String noticeboardDate, String noticeboardInsert,
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
		return "NoticeBoardEntity [noticeboardAdmin=" + noticeboardAdmin + ", noticeboardDate=" + noticeboardDate
				+ ", noticeboardInsert=" + noticeboardInsert + ", noticeboardTitle=" + noticeboardTitle + "]";
	}
	
	
}


