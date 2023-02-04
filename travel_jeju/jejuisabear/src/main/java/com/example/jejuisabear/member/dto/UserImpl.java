package com.example.jejuisabear.member.dto;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class UserImpl extends User{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5478382248982091568L;
	private int no;
	private String id;
	private String pwd;
	private String nickname;
	
	
	
	
	public UserImpl(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}
	
	public void setDetails(MemberDTO member) {
		this.no = member.getUserNo();
		this.id = member.getId();
		this.pwd = member.getPwd(); 
		this.nickname = member.getNickname();
	}

	public int getNo() {
		return no;
	}

	public String getId() {
		return id;
	}

	public String getPwd() {
		return pwd;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}


	
	
	
	

}
