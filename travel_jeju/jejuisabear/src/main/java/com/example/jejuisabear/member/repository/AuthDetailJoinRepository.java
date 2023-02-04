package com.example.jejuisabear.member.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.jejuisabear.member.entity.AuthDetailAndAuthEntity;
import com.example.jejuisabear.member.entity.MemberEntity;

@Repository
public interface AuthDetailJoinRepository extends JpaRepository<AuthDetailAndAuthEntity, Integer>{
	
	
}
