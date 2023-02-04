package com.example.jejuisabear.travelreview.controller;		
		
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.jejuisabear.paging.Pagenation;
import com.example.jejuisabear.paging.SelectCriteria;
import com.example.jejuisabear.travelreview.dto.TravelReviewDTO;
import com.example.jejuisabear.travelreview.service.TravelReviewService;		
		
@Controller
@RequestMapping("/travelreview")
public class TravelReviewController {		
		
	private final TravelReviewService travelreviewService;
	private int revViews;
		
	@Autowired	
	public TravelReviewController(TravelReviewService travelreviewService) {	
		this.travelreviewService = travelreviewService;
		
	}
	
	/* 여행후기 게시글 페이지 이동 테스트 */
//	@GetMapping("/reviewpage")
//	public void reviewpage() {
//		System.out.println("테스트 reviewpage");
//	}
	
//	@GetMapping("/{revNo}")
//	public ModelAndView findTravelReviewByrevNo(ModelAndView mv, @PathVariable int revNo) {
//		System.out.println("revNo확인용");
//		TravelReviewDTO reviewpage = travelreviewService.findTravelReviewByrevNo(revNo);
//		
//		mv.addObject("content", reviewpage);
//		mv.setViewName("/travelreview/reviewpage");
//		
//		return mv;
//	}
	
//	/* 여행 후기 리스트 페이지 연결 테스트 */
//	@GetMapping("/travelreview")
//	public void travelreview() {
//		System.out.println("테스트 travelreview");
//	}
	
	/* 여행 후기 리스트 */
	@GetMapping("/travelreview")
	public ModelAndView findTravelReview(HttpServletRequest request, ModelAndView mv) {	
		System.out.println("확인용 travelreview");
		String currentPage = request.getParameter("currentPage");
		int pageNo = 1;

		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}

		String searchCondition = request.getParameter("searchCondition");
		String searchValue = request.getParameter("searchValue");

		int totalCount = travelreviewService.selectTotalCount(searchCondition, searchValue);

		/* 한 페이지에 보여 줄 게시물 수 */
		int limit = 10;

		/* 한 번에 보여질 페이징 버튼의 갯수 */
		int buttonAmount = 5;

		/* 페이징 처리를 위한 로직 호출 후 페이징 처리에 관한 정보를 담고 있는 인스턴스를 반환받는다. */
		SelectCriteria selectCriteria = null;
		if(searchValue != null && !"".equals(searchValue)) {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount, searchCondition, searchValue);
		} else {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		}
		System.out.println(selectCriteria);

		List<TravelReviewDTO> reviewList = travelreviewService.reviewList(selectCriteria);

		for(TravelReviewDTO review : reviewList) {
			System.out.println(review);
		}
		
		mv.addObject("reviewList", reviewList);
		mv.addObject("selectCriteria", selectCriteria);
		mv.setViewName("travelreview/travelreview");

		return mv;
	}
	
	/* 여행 후기 상세 보기 */
	@GetMapping("/reviewpage/{revNo}")
	public ModelAndView findTravelReviewByrevNo(ModelAndView mv, @PathVariable int revNo) {
		System.out.println("pathVariable확인용dydydy: " + revNo);
		
		TravelReviewDTO revContent = travelreviewService.findTravelReviewByrevNo(revNo);
		
		System.out.println("조회된 후기 내용: " + revContent);
		mv.addObject("review", revContent);
//		mv.addObject("content", revContent.getRevContent());
//		mv.addObject("revTitle", revContent.getRevTitle());
//		mv.addObject("pImageUrl", revContent.getpImageUrl());
//		mv.addObject("userNickname", revContent.getUserNickname());
		mv.setViewName("travelreview/reviewpage");
		
		return mv;
	}
	
	/* 여행후기 게시글 작성 화면*/
	@GetMapping("/reviewboard")
	public void reviewboard() {
		System.out.println("테스트 reviewboard");
	}

	/* 후기 작성 후 등록 */
	@PostMapping("/reviewboard")
	public ModelAndView registReview(ModelAndView mv, TravelReviewDTO newReview, RedirectAttributes rttr) {

		System.out.println("newReview" + newReview);
		
		travelreviewService.registNewReview(newReview);			
		
		rttr.addFlashAttribute("registSuccessMessage", "글 등록이 완료되었습니다.");
		mv.setViewName("redirect:/travelreview/travelreview");
		
		return mv;
	}
	
	/* 여행 후기 삭제 */
	@PostMapping("/reviewpage/{revNo}")
	public String delete(@PathVariable int revNo) {
		System.out.println("제발 넘어가라");
		travelreviewService.delete(revNo);
		
		return "redirect:/travelreview/travelreview";
	}
	
}		
