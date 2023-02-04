package com.example.jejuisabear.member.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.jejuisabear.member.entity.AuthAndAuthDetailEntity;


@Repository
public interface AuthRepository extends JpaRepository<AuthAndAuthDetailEntity, Integer>{
	
	@Query(value = "SELECT c FROM AuthDetailAndAuth m JOIN m.authNo c WHERE m.userNo = ?1")
	public List<AuthAndAuthDetailEntity> findMemberAuthByNo(int userNo);
	
} 