package com.example.jejuisabear.travel.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.jejuisabear.paging.Pagenation;
import com.example.jejuisabear.paging.SelectCriteria;
import com.example.jejuisabear.travel.dto.ImageDTO;
//import com.example.jejuisabear.travel.dto.TagDTO;
import com.example.jejuisabear.travel.dto.TravelDTO;
import com.example.jejuisabear.travel.service.TravelService;

@Controller
@RequestMapping("/travel")
public class TravelController {

	private final TravelService travelService;

	@Autowired
	public TravelController(TravelService travelService) {
		this.travelService = travelService;
	}

	@GetMapping("/{placeNo}")
	public ModelAndView findTravelEntityByplaceNo(ModelAndView mv, @PathVariable int placeNo) {

		TravelDTO travelDTO = travelService.findTravelEntityByplaceNo(placeNo);

		mv.addObject("travel", travelDTO);
		mv.setViewName("/travel/travelDetail");

		return mv;
	}

	@GetMapping("/travelList")
	public ModelAndView findTravelList(HttpServletRequest request, ModelAndView mv) {

		String currentPage = request.getParameter("currentPage");
		int pageNo = 1;

		if (currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}

		String searchCondition = request.getParameter("searchCondition");
		String searchValue = request.getParameter("searchValue");

		int totalCount = travelService.selectTotalCount(searchCondition, searchValue);

		/* 한 페이지에 보여 줄 게시물 수 */
		int limit = 10;

		/* 한 번에 보여질 페이징 버튼의 갯수 */
		int buttonAmount = 5;

		/* 페이징 처리를 위한 로직 호출 후 페이징 처리에 관한 정보를 담고 있는 인스턴스를 반환받는다. */
		SelectCriteria selectCriteria = null;
		if (searchValue != null && !"".equals(searchValue)) {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount, searchCondition,
					searchValue);
		} else {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		}

		List<TravelDTO> travelList2 = travelService.searchTravelList(selectCriteria);

		for (TravelDTO List2 : travelList2) {
//			System.out.println("List2" + List2);
		}

		mv.addObject("pageTravelList", travelList2);
		mv.addObject("selectCriteria", selectCriteria);
		mv.setViewName("travel/travelList");
		return mv;
	}

	@GetMapping("/travelDetail/{placeNo}")
	public ModelAndView findTravelEntityByplaceAddress(ModelAndView mv,	@PathVariable String placeNo) {

		TravelDTO traveldto = travelService.findTravelEntityByplaceNo(Integer.valueOf(placeNo));
		ImageDTO imagedto = travelService.findImageEntityByplaceNo(Integer.valueOf(placeNo));

		mv.addObject("travel", traveldto);
		mv.addObject("image", imagedto.getPlaceImageUrl());
		mv.setViewName("travel/travelDetail");

		return mv;
	}

	@GetMapping("/travelModify")
	public void modifyPage() {
	}

	@PostMapping("/travelModify")
	public String modifyPage(RedirectAttributes rttr, @ModelAttribute TravelDTO travel) {
		travelService.modifyTravel(travel);

		rttr.addFlashAttribute("modifySuccessMessage", "관광지 수정에 성공하셨습니다");
		return "redirect:/travel/travelList";
	}
	
	@GetMapping("/travelRegist")
	public void travelRegistPage() {

	}
	
	@PostMapping("/travelRegist")
	public ModelAndView travelRegist(ModelAndView mv, TravelDTO newTravel, RedirectAttributes rttr) {

		travelService.travelRegist(newTravel);

		rttr.addFlashAttribute("registSuccessMessage", "관광지 등록에 성공하셨습니다");
		mv.setViewName("redirect:/travel/travelList");
		
		return mv;
	}
	
   /* 관광지 삭제 */
   @PostMapping("/travelDetail/{placeNo}")
   public String delete(@PathVariable int placeNo) {
      System.out.println("제발 넘어가라");
      travelService.delete(placeNo);
      
      return "redirect:/travel/travelList";
   }

}
