package com.example.jejuisabear.member.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.jejuisabear.member.entity.AuthDetailEntity;

@Repository
public interface AuthDetailRepository extends JpaRepository<AuthDetailEntity, Integer>{
	
}
