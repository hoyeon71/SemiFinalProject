package com.example.jejuisabear.notice.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.example.jejuisabear.notice.domain.NoticeEntity;

public interface NoticeRepository extends JpaRepository<NoticeEntity, Integer>{
	
	@Query(value = "SELECT n FROM NoticeEntity n ORDER BY n.noticeNo")
	// select n: 테이블 전체 컬럼 조회
	// order by n.noticeTitle : noticentity table의 noticetitle 오름차순 정렬
	public List<NoticeEntity> findNotice();
	
	// 상세 페이지 -> 목록에서 클릭한 공지 글 내용을 볼 수 있게 해당 글의 모든 정보를 SELECT 해온다.
}
