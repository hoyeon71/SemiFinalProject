package com.example.jejuisabear.member.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.jejuisabear.member.dto.AuthDTO;
import com.example.jejuisabear.member.dto.MemberDTO;
import com.example.jejuisabear.member.dto.UserImpl;


@Service
public class UserServiceImpl implements UserService{
	
	private final MemberService memberService;
	
	@Autowired
	public UserServiceImpl(MemberService memberService) {
		this.memberService = memberService;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		MemberDTO memberDTO = memberService.findMemberByUserId(username);
		
		List<AuthDTO> authList = memberService.findMemberAuthByNo(memberDTO.getUserNo());
		List<GrantedAuthority> authorities = new ArrayList<>(); 
		
		for(int i = 0; i < authList.size(); i++) {
			authorities.add(new SimpleGrantedAuthority(authList.get(i).getAuthName()));
		}
		
		UserImpl user = new UserImpl(memberDTO.getId(), memberDTO.getPwd(), authorities);
		
		user.setDetails(memberDTO);
		
		return user;
	}
}
