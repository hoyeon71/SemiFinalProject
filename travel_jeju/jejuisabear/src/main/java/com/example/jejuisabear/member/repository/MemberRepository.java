package com.example.jejuisabear.member.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.jejuisabear.member.entity.MemberEntity;


@Repository
public interface MemberRepository extends JpaRepository<MemberEntity, String>{
	
	@Query(value = "SELECT * FROM USERS A WHERE A.USER_ID = ?1", nativeQuery  = true)
	public MemberEntity findMemberById(String id);
	
	@Query(value = "SELECT * FROM USERS A WHERE A.USER_NICKNAME = ?1", nativeQuery  = true)
	public MemberEntity findMemberByNickname(String nickname);
	
	@Query(value = "SELECT * FROM USERS A WHERE A.USER_EMAIL = ?1", nativeQuery  = true)
	public MemberEntity findMemberByEmail(String email);
	
}