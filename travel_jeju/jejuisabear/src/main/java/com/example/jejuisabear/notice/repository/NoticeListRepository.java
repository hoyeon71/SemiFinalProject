package com.example.jejuisabear.notice.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.jejuisabear.notice.domain.NoticeEntity;

public interface NoticeListRepository extends JpaRepository<NoticeEntity, Integer>{
	// 리스트 페이지
}


/*
 * Repository는 대게 Entity와 1:1로 매칭된다고 볼 수도 있으나 꼭 그렇지많은 않고 부모에 종속적으로 사용이 되는 자식 Entity가
 * 연관관계로 있고 자식에 대한 직접적인 데이타 조작이 필요가 없다면 부모 Entity에 대해서만 Repository에 제네릭으로 정의하면 된다.
 */