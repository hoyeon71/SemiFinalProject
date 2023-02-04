package com.example.jejuisabear.member.controller;

import java.sql.Timestamp;
import java.util.List;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.jejuisabear.member.dto.AccessHistoryDTO;
import com.example.jejuisabear.member.dto.AuthDetailDTO;
import com.example.jejuisabear.member.dto.MemberDTO;
import com.example.jejuisabear.member.dto.UserImpl;
import com.example.jejuisabear.member.service.MemberService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	private final MemberService memberService;
	private final JavaMailSender mailSender;
	
	@Autowired
	public MemberController(MemberService memberService, JavaMailSender mailSender) {
		this.memberService = memberService;
		this.mailSender = mailSender;
	}
	
	
	@GetMapping("/login")
	public void memberLoginForm() {}
	
	@GetMapping("/join")
	public void memberJoinForm() {}
	
	@GetMapping("/mypage/coninfo")
	public ModelAndView myConnectInfoForm(ModelAndView mv) {
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
		UserImpl userDetails = (UserImpl)principal; 
		String username = userDetails.getUsername();
		
		List<AccessHistoryDTO> accessHistoryList = memberService.findAccessHistorybyId(username);
		
		System.out.println(accessHistoryList);
		
		mv.addObject("accessHistoryList", accessHistoryList);
		mv.setViewName("/member/mypage/coninfo");
		
		return mv;
	}
	
	@GetMapping("/mypage/memberdrop")
	public ModelAndView memberDropForm(ModelAndView mv) {
		// 현재 접속한 유저의 정보
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
		UserImpl userDetails = (UserImpl)principal; 
		String username = userDetails.getUsername();
		// 현재 접속한 유저의 memberDTO 조회
		MemberDTO memberDTO = memberService.findMemberByUserId(username);
		// memberDTO 값 수정
		memberDTO.setDelStat("Y");
		// update
		memberService.registNewMember(memberDTO);
		
		mv.addObject("isDrop", "dropConfirmed");
		mv.setViewName("/member/login");
		return mv;
	}
	
	@GetMapping("/mypage/memberdropcheck")
	public void memberDropCheckForm() {}
	
	@GetMapping("/mypage/memberinfo")
	public ModelAndView memberInfoForm(ModelAndView mv) {
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
		UserImpl userDetails = (UserImpl)principal; 
		String username = userDetails.getUsername();
		
		mv.setViewName("/member/mypage/memberinfo");
		
		return mv;
	}
	
	@PostMapping("/drop")
	public ModelAndView memberDropCheck(ModelAndView mv, String password) {
		
		System.out.println("이거 작동되나?");
		System.out.println("input에 입력된 비밀번호 : " + password);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
		UserImpl userDetails = (UserImpl)principal; 
		String savedPwd = userDetails.getPwd();
		String savedId = userDetails.getId();
		System.out.println(savedId);
		
		System.out.println("savedPwd : " + savedPwd);
		
		if(passwordEncoder.matches(password, savedPwd)) {
			//비번이 일치하는 경우
			MemberDTO memberDTO = memberService.findMemberByUserId(userDetails.getId());
			memberDTO.setDelStat("Y");
			memberService.registNewMember(memberDTO);
			System.out.println(memberDTO);
			
			System.out.println("두 비밀번호가 일치합니다.");
		} else {
			// 비밀번호가 틀린 경우
			mv.addObject("resultMsg", "failed");
			mv.setViewName("/member/mypage/memberdropcheck");
			
			System.out.println("두 비밀번호가 일치하지 않습니다.");
		}
		mv.addObject("deleteResult", "success");
		mv.setViewName("/member/login");
		
		return mv;
	}
	
	@PostMapping("/regist")
	public ModelAndView registNewMember(ModelAndView mv,	MemberDTO memberDTO, RedirectAttributes rttr) {
		
		if(!(memberService.findMemberByUserId(memberDTO.getId()).getUserNo() > 0)) {	// 아이디 중복 확인
			if(!(memberService.findMemberByNickname(memberDTO.getNickname()).getUserNo() > 0)) { // 닉네임 중복 확인
				BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); 
				// 입력받은 비밀번호를 암호화해서 저장
				memberDTO.setPwd(passwordEncoder.encode(memberDTO.getPwd()));
				java.util.Date currentTime = new java.util.Date();
				java.util.Date pwdUptoDate = new java.util.Date(currentTime.getTime()+(7776000000L));
				// 계정 생성일 저장
				Timestamp timestamp = new Timestamp(currentTime.getTime());
				// 계정 생성일로부터 90일 뒤의 날짜를 저장
				Timestamp after90Timestamp = new Timestamp(pwdUptoDate.getTime());
				memberDTO.setEntDate(timestamp); 
				memberDTO.setPwdChangeDate(timestamp);
				memberDTO.setPwdUptoDate(after90Timestamp);
				// 회원가입으로는 일반유저만 계정만 생성 가능
				memberDTO.setAuth("일반유저");
				// db에 입력받은 유저 정보로 계정 저장
				memberService.registNewMember(memberDTO);
				
				// 권한 상세 테이블 user_no에 입력할 user_no 조회
				MemberDTO memberDTO2 = memberService.findMemberByUserId(memberDTO.getId());
				// 권한 상세 테이블에 신규유저 권한 저장
				AuthDetailDTO authDetailDTO = new AuthDetailDTO(memberDTO2.getUserNo(), 2);
				memberService.registNewMemberAuth(authDetailDTO);
				
				mv.setViewName("/member/login");
			} else {
				mv.addObject("joinSuccess", "중복된 닉네임입니다. 다시 입력해 주십시오.");
				mv.setViewName("/member/join");
			}
		} else {
			mv.addObject("joinSuccess", "중복된 아이디입니다. 다시 입력해 주십시오.");
			mv.setViewName("/member/join");
		} 
		return mv;
	}
	
	@PostMapping("/infoedit")
	public ModelAndView editMember(ModelAndView mv,	MemberDTO memberDTO, RedirectAttributes rttr) {
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
		UserImpl userDetails = (UserImpl)principal; 
		String username = userDetails.getUsername();
		
		MemberDTO dbmemberDTO = memberService.findMemberByUserId(username);
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); 
		// 입력받은 비밀번호를 암호화해서 저장
		dbmemberDTO.setPwd(passwordEncoder.encode(memberDTO.getPwd()));
		dbmemberDTO.setNickname(memberDTO.getNickname());
		dbmemberDTO.setPhoneNumber(memberDTO.getPhoneNumber());
		dbmemberDTO.setEmail(memberDTO.getEmail());
		// 변경된 memberDTO를 update
		memberService.registNewMember(dbmemberDTO);

		mv.addObject("resultMsg", "success");
		mv.setViewName("/member/mypage/memberinfo");
		
		return mv;
	}
	
	@GetMapping(value="checkId", produces="application/json; charset=UTF-8")
	@ResponseBody				// 반환한 문자열이 뷰의 이름이 아님을 명시한 것으로 봐도 된다.
	public String checkDuplicatedId(@RequestParam String newId) {
		
		MemberDTO memberDTO = memberService.findMemberByUserId(newId);
		System.out.println("검색해온 계정의 아이디를 출력해봅시다 : " + memberDTO.getId());
		
		System.out.println("newId를 출력해봅시다 : " + newId);
		
		Gson gson = new GsonBuilder()
				        .serializeNulls()									// 필드 값이 null이라도 직렬화
				        .create();											// Gson 객체로 변환
		        
		if(newId.equals(memberDTO.getId())) {
			return gson.toJson(0);			// 중복된 아이디일 경우 0을 반환 
		} else if(!(newId.equals(memberDTO.getId()))) {
			return gson.toJson(1);			// 중복된 아이디가 아닐 경우 1을 반환
		} else {
			return gson.toJson(2);			// 예상치 못한 예외의 경우 2를 반환
		}
	}
	
	@GetMapping(value="checkNickname", produces="application/json; charset=UTF-8")
	@ResponseBody				// 반환한 문자열이 뷰의 이름이 아님을 명시한 것으로 봐도 된다.
	public String checkDuplicatedNickname(@RequestParam String newNickname) {
		
		System.out.println("통신은 되나?");
		
		MemberDTO memberDTO = memberService.findMemberByNickname(newNickname);
		System.out.println("검색해온 계정의 닉네임을 출력해봅시다 : " + memberDTO.getNickname());
		
		System.out.println("newNickname를 출력해봅시다 : " + newNickname);
		
		Gson gson = new GsonBuilder()
				        .serializeNulls()									// 필드 값이 null이라도 직렬화
				        .create();											// Gson 객체로 변환
		        
		if(newNickname.equals(memberDTO.getNickname())) {
			return gson.toJson(0);			// 중복된 닉네임일 경우 0을 반환 
		} else if(!(newNickname.equals(memberDTO.getNickname()))) {
			return gson.toJson(1);			// 중복된 닉네임이 아닐 경우 1을 반환
		} else {
			return gson.toJson(2);			// 예상치 못한 예외의 경우 2를 반환
		}
	}

	@PostMapping(value = "/findId", produces="text/html;charset=UTF-8")
	public ModelAndView findIdEmail(@RequestParam String email, ModelAndView mv) throws Exception {
		
		String setfrom = "kingmumuop2@gmail.com";
		String tomail = email; // 받는 사람 이메일
		String title = "안녕하세요 Jeju is a Bear 아이디 찾기 이메일 입니다. "; // 제목
		String content;
		
		// 이메일로 계정정보 검색해와서 memberDTO.getId(); 를 content에 담기
		MemberDTO memberDTO = memberService.findMemberByEmail(tomail);
		
		if(memberDTO.getId() != null) {
			content = "회원님의 아이디는  " + memberDTO.getId() + " 입니다."; // 내용

			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message,
						true, "UTF-8");
				
				messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
				messageHelper.setTo(tomail); // 받는사람 이메일
				messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
				messageHelper.setText(content); // 메일 내용
				
				mailSender.send(message);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else {
			mv.addObject("idFindResult", "fail");
			mv.setViewName("/member/login");
			
			return mv;
		}
		
		mv.addObject("idFindResult", "success");
		mv.setViewName("/member/login");
		return mv;
	}
	
	@PostMapping(value = "/findPwd", produces="text/html;charset=UTF-8")
	public ModelAndView findPwdEmail(@RequestParam String email, String id, ModelAndView mv) throws Exception {
		
		String setfrom = "kingmumuop2@gmail.com";
		String tomail = email; // 받는 사람 이메일
		String title = "안녕하세요 Jeju is a Bear 아이디 찾기 이메일 입니다. "; // 제목
		String content;
		
		// 이메일로 계정정보 검색해와서 memberDTO.getId(); 를 content에 담기
		MemberDTO memberDTO = memberService.findMemberByEmail(tomail);
		
		// 이메일로 검색해온 계정 정보의 id가 입력한 id와 일치하는 경우
		if(memberDTO.getId().equals(id)) {
			
			// 임시 비밀번호(난수) 만들기
			int[] asciiList = new int[62];
			for(int i = 0 ; i < 62 ; i++) {
				if(i<10) { // 0-9까지의 아스키코드 번호
					asciiList[i] = i + 48;
				} else if(i<36) { // A-Z까지의 아스키코드 번호
					asciiList[i] = i + 55;
				} else { // a-Z까지의 아스키코드 번호
					asciiList[i] = i + 61;
				}
			}
				
			String tmpPwd = ""; 
			
			for(int i = 0 ; i < 16 ; i++) {
				int j = (int)(Math.random()*62);
				char tempChar = (char)(asciiList[j]);
				tmpPwd += tempChar;
			}
			// 임시 비밀번호를 암호화하고 MemberDTO에 넣기
			BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
			memberDTO.setPwd(pwdEncoder.encode(tmpPwd));
			
			memberService.registNewMember(memberDTO);
			
			content = "회원님의 임시 비밀번호는  " + tmpPwd + " 입니다."; // 내용
			
			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message,
						true, "UTF-8");
				
				messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
				messageHelper.setTo(tomail); // 받는사람 이메일
				messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
				messageHelper.setText(content); // 메일 내용
				
				mailSender.send(message);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else {
			mv.addObject("pwdFindResult", "fail");
			mv.setViewName("/member/login");
			
			return mv;
		}
		mv.addObject("pwdFindResult", "success");
		mv.setViewName("/member/login");
		return mv;
	}
	
}
