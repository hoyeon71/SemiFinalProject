package com.example.jejuisabear.member.controller.loginHandler;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.example.jejuisabear.member.dto.MemberDTO;
import com.example.jejuisabear.member.service.MemberService;

@Component
public class LoginFailureHandler implements AuthenticationFailureHandler{
	
	private MemberService memberService;
	
	@Autowired
	public LoginFailureHandler(MemberService memberService) {
		this.memberService = memberService;
	}

    private String username;
    private String password;
    private String errorMsgName;
    private String defaultFailureUrl;
    
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		
		// login 시도한 id에 로그인 실패 회수 +1 시키기
		MemberDTO memberDTO = memberService.findMemberByUserId(request.getParameter("username"));
		memberDTO.setConFailedNum(memberDTO.getConFailedNum()+1);
		
		memberService.registNewMember(memberDTO);
		
		errorMsgName = "LoginFailed";
		errorMsgName = URLEncoder.encode(errorMsgName, "UTF-8");
		int times = 0;
		
		// 아이디가  db에 없는 경우
		if(request.getParameter("username") == null) {
			errorMsgName = "IncorrectId";
		} else {
			errorMsgName = "IncorrectPwd";
			times = memberDTO.getConFailedNum()+1;
		}
		
		response.sendRedirect("/member/login?errorMsgName=" + errorMsgName + "&name=" 
		                       + request.getParameter("username") + "&times=" + times);
	}

	public LoginFailureHandler() {
		super();
	}

	public LoginFailureHandler(String username, String password, String errorMsgName, String defaultFailureUrl) {
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
