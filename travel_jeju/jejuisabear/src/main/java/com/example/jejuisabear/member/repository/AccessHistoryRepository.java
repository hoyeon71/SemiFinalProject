package com.example.jejuisabear.member.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.jejuisabear.member.entity.AccessHistoryEntity;
import com.example.jejuisabear.member.entity.MemberEntity;


@Repository
public interface AccessHistoryRepository extends JpaRepository<AccessHistoryEntity, String>{
	
	@Query(value = "SELECT * FROM CONNECT_DETAIL A WHERE A.USERS_ID = ?1", nativeQuery  = true)
	public List<AccessHistoryEntity> findAccessHistoryById(String id);
	
}