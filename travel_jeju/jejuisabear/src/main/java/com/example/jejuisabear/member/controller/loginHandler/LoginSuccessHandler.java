package com.example.jejuisabear.member.controller.loginHandler;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.example.jejuisabear.member.dto.AccessHistoryDTO;
import com.example.jejuisabear.member.dto.MemberDTO;
import com.example.jejuisabear.member.service.MemberService;

@Component
public class LoginSuccessHandler implements AuthenticationSuccessHandler{
	
	private MemberService memberService;
	
	@Autowired
	public LoginSuccessHandler(MemberService memberService) {
		this.memberService = memberService;
	}

    private String username;
    private String password;
    private String errorMsgName;
    private String defaultFailureUrl;
    
    @Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
    	
    	// 접속 실패 5회 이상일 경우에는 바로 바로 로그아웃 시킴
    	MemberDTO memberDTO = memberService.findMemberByUserId(request.getParameter("username"));
    	if(memberDTO.getDelStat().equals("Y")) { // 삭제된 계정으로 로그인시
    		errorMsgName = "DeletedAccount";
    		response.sendRedirect("/member/login?errorMsgName=" + errorMsgName);
    	} else if(memberDTO.getConFailedNum() >= 5) { // 정지된 계정으로 로그인시
    		errorMsgName = "FrozenAccount";
    		response.sendRedirect("/member/login?errorMsgName=" + errorMsgName);
    	} else {    	// 접속 실패 4회 이하일 경우에는 접속 실패 이력 0으로 UPDATE
    		memberDTO.setConFailedNum(0);
    		
    		memberService.registNewMember(memberDTO); // 이름은 이렇지만 넘겨받은 memberDTO를 save하는 메서드입니다.

    		// 로그인 성공 시 접속 이력 INSERT
    		AccessHistoryDTO accessHistoryDTO = new AccessHistoryDTO();
    		accessHistoryDTO.setId(request.getParameter("username"));
    		java.util.Date currentTime = new java.util.Date();
    		Timestamp timestamp = new Timestamp(currentTime.getTime());
    		accessHistoryDTO.setConDate(timestamp);
    		
    		memberService.insertAccessHistory(accessHistoryDTO);
    		
    		response.sendRedirect("/");
    	}
	}

	public LoginSuccessHandler() {
		super();
	}

	public LoginSuccessHandler(String username, String password, String errorMsgName, String defaultFailureUrl) {
		super();
		this.username = username;
		this.password = password;
		this.errorMsgName = errorMsgName;
		this.defaultFailureUrl = defaultFailureUrl;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getErrorMsgName() {
		return errorMsgName;
	}

	public void setErrorMsgName(String errorMsgName) {
		this.errorMsgName = errorMsgName;
	}

	public String getDefaultFailureUrl() {
		return defaultFailureUrl;
	}

	public void setDefaultFailureUrl(String defaultFailureUrl) {
		this.defaultFailureUrl = defaultFailureUrl;
	}

	@Override
	public String toString() {
		return "LoginFailureHandler [username=" + username + ", password=" + password + ", errorMsgName=" + errorMsgName
				+ ", defaultFailureUrl=" + defaultFailureUrl + "]";
	}
	
}
