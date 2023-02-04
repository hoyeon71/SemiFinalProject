package com.example.jejuisabear.member.service;

import java.util.List;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.jejuisabear.member.dto.AccessHistoryDTO;
import com.example.jejuisabear.member.dto.AuthDTO;
import com.example.jejuisabear.member.dto.AuthDetailDTO;
import com.example.jejuisabear.member.dto.MemberDTO;
import com.example.jejuisabear.member.entity.AccessHistoryEntity;
import com.example.jejuisabear.member.entity.AuthAndAuthDetailEntity;
import com.example.jejuisabear.member.entity.AuthDetailEntity;
import com.example.jejuisabear.member.entity.MemberEntity;
import com.example.jejuisabear.member.repository.AccessHistoryRepository;
import com.example.jejuisabear.member.repository.AuthDetailJoinRepository;
import com.example.jejuisabear.member.repository.AuthDetailRepository;
import com.example.jejuisabear.member.repository.AuthRepository;
import com.example.jejuisabear.member.repository.MemberRepository;
import com.example.jejuisabear.member.repository.RegistRepository;


@Service
public class MemberService {
	private final MemberRepository memberRepository;
	private final AuthRepository authRepository;
	private final RegistRepository registRepository;
	private final AccessHistoryRepository accessHistoryRepository;
	private final AuthDetailJoinRepository authDetailJoinRepository;
	private final AuthDetailRepository authDetailRepository;
	private final ModelMapper modelMapper;
	
	@Autowired
	public MemberService(MemberRepository memberRepository, AuthRepository authRepository, 
						 ModelMapper modelMapper, RegistRepository registRepository, 
						 AccessHistoryRepository accessHistoryRepository, 
						 AuthDetailJoinRepository authDetailJoinRepository,
						 AuthDetailRepository authDetailRepository) {
		this.memberRepository = memberRepository;
		this.authRepository = authRepository;
		this.registRepository = registRepository;
		this.accessHistoryRepository = accessHistoryRepository;
		this.authDetailJoinRepository = authDetailJoinRepository;
		this.authDetailRepository = authDetailRepository;
		this.modelMapper = modelMapper;
	}
	
//	public MemberDTO findMemberById(int no) {
//		
//		MemberEntity memberEntity = memberRepository.findMemberById(no);
//		
//		
//		return modelMapper.map(memberEntity, MemberDTO.class);
//	}
	
	// 아이디를 받아서 회원 정보를 반환하는 메서드
	public MemberDTO findMemberByUserId(String id) {
		MemberEntity memberEntity = memberRepository.findMemberById(id);
		
		if(memberEntity == null) {
			MemberDTO memberDTO = new MemberDTO();
			
			System.out.println("엔티티가 null일때 반환할 DTO의 아이디 출력 : " + memberDTO.getId());
			
			return memberDTO;
		} else {			
			System.out.println("엔티티에 들어있는 계정의 아이디 출력 : " + memberEntity.getId()); 
			
			return modelMapper.map(memberEntity, MemberDTO.class);
		}
	}
	
	// 회원번호를 받아서 해당 회원의 권한 목록을 반환하는 메서드
	public List<AuthDTO> findMemberAuthByNo(int no) {
		System.out.println("서비스 실행되나?");
		System.out.println("매개변수로 넘겨받은 회원 번호는 : " + no);
		
		List<AuthAndAuthDetailEntity> authSetList = authRepository.findMemberAuthByNo(no);
		System.out.println("authSetList 출력~~~~ : " + authSetList);
		
		return authSetList.stream().map(authSet -> modelMapper.map(authSet, AuthDTO.class)).collect(Collectors.toList());
	}

	// 회원가입 메서드
	@Transactional
	public void registNewMember(MemberDTO memberDTO) {
		System.out.println("서비스에서 넘겨받은 DTO : " + memberDTO);
		
		System.out.println("따끈따끈한 엔티티 출력 : " + (modelMapper.map(memberDTO, MemberEntity.class)).toString());
		
		registRepository.save(modelMapper.map(memberDTO, MemberEntity.class));
	}
	
	// 회원번호를 받아서 회원 정보를 반환하는 메서드
	public MemberDTO findMemberByNo(int userNo) {
		MemberEntity memberEntity = registRepository.findById(userNo).get(); 
		
		return modelMapper.map(memberEntity, MemberDTO.class);
	}
	
	// 회원가입시 AuthDetail에 권한 등록
	public void registNewMemberAuth(AuthDetailDTO authDetailDTO) {
		authDetailRepository.save(modelMapper.map(authDetailDTO, AuthDetailEntity.class));
	}
	
	// 닉네임을 받아서 유저 정보를 반환하는 메서드
	public MemberDTO findMemberByNickname(String nickname) {	
		MemberEntity memberEntity = memberRepository.findMemberByNickname(nickname);
		
		if(memberEntity == null) {
			MemberDTO memberDTO = new MemberDTO();
			return memberDTO;
		} else {			
			return modelMapper.map(memberEntity, MemberDTO.class);
		}
	}
	
	// 이메일을 받아서 유저 정보를 반환하는 메서드
	public MemberDTO findMemberByEmail(String email) {
		MemberEntity memberEntity = memberRepository.findMemberByEmail(email);
		
		if(memberEntity == null) {
			MemberDTO memberDTO = new MemberDTO();
			return memberDTO;
		} else {			
			return modelMapper.map(memberEntity, MemberDTO.class);
		}
	}
	

	
	// 로그인한 사용자의 접속이력을 반환하는 메서드
	public List<AccessHistoryDTO> findAccessHistorybyId(String id){
		
		List<AccessHistoryEntity> accessHistoryList = accessHistoryRepository.findAccessHistoryById(id);
		
		return accessHistoryList.stream().map(accessHistory -> modelMapper.map(accessHistory, AccessHistoryDTO.class)).collect(Collectors.toList());
	}
	
	// 로그인한 사용자의 접속이력을 추가하는 메서드
	public void insertAccessHistory(AccessHistoryDTO accessHistoryDTO) {
		
		System.out.println("접속 이력 추가할 DTO : " + accessHistoryDTO);
		System.out.println("접속이력 추가할 엔티티 : " + modelMapper.map(accessHistoryDTO, AccessHistoryEntity.class));
		
		accessHistoryRepository.save(modelMapper.map(accessHistoryDTO, AccessHistoryEntity.class));
	}
}
