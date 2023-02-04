package com.example.jejuisabear.notice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.jejuisabear.matching.entity.MateAndMlist;
import com.example.jejuisabear.matching.entity.Mlist;
import com.example.jejuisabear.notice.domain.NoticeEntity;
import com.example.jejuisabear.notice.dto.NoticeDTO;
import com.example.jejuisabear.notice.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	private final NoticeService noticeService;

	@Autowired
	public NoticeController(NoticeService noticeService) {
		this.noticeService = noticeService;
	}
	
	/* 공지사항 목록 */
	@GetMapping("/noticeList")
	public ModelAndView findNotice(ModelAndView mv) {
		
		System.out.println("공지사항 목록이 뜨나..");
		
		List<NoticeDTO> notice = noticeService.findNotice();
		
		mv.addObject("notice", notice);
		mv.setViewName("notice/noticeList");
		
		System.out.println("공지사항 목록이 뜨나..final");
		return mv;
	}

	/* 리스트에서 글 제목을 클릭하여 넘어와서 보이는 페이지 */
	@GetMapping("/{noticeNo}")
	public ModelAndView findNotice(ModelAndView mv, @PathVariable int noticeNo) {
		
		NoticeDTO Notice = noticeService.findNotice(noticeNo);
		System.out.println("넘어온 번호: " + Notice);
		mv.addObject("notice", Notice);
		mv.setViewName("/notice/notice");
		
		return mv;
	}
	
	/* 공지사항 작성 페이지 */
	@GetMapping("/noticeboard")
	public void noticeboard() {
		System.out.println("test noticeboard");
	}
	
	/* 공지사항 작성 후 등록 */
	@PostMapping("/noticeboard")
	public ModelAndView registerNotice(ModelAndView mv, NoticeDTO newNotice, RedirectAttributes rttr) {

		System.out.println("newNotice" + newNotice);
		
		noticeService.registerNotice(newNotice);
		
		rttr.addFlashAttribute("registerSuccessMessage", "공지사항이 등록되었습니다.");
		mv.setViewName("redirect:/notice/noticeList");
		
		return mv;
	}
	
	/* 공지사항 삭제 */
	@DeleteMapping("/notice/{notice}")
	public String delete(@PathVariable String notice) {	
				
		noticeService.delete(Integer.valueOf(notice));
		
		return "redirect:/notice/noticeList";
	}
	
}


