package com.example.jejuisabear.matching.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.jejuisabear.matching.dto.MlistDTO;
import com.example.jejuisabear.matching.entity.MateAndMlist;
import com.example.jejuisabear.matching.entity.Mlist;
import com.example.jejuisabear.matching.service.MateService;
import com.example.jejuisabear.member.dto.MemberDTO;
import com.example.jejuisabear.member.entity.MemberEntity;
import com.example.jejuisabear.paging.Pagenation;
import com.example.jejuisabear.paging.SelectCriteria;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/mate")
public class MateController {
	
	private final MateService mateService;
	
	@Autowired
	public MateController(MateService mateService) {
		this.mateService = mateService;
	}
	
	@GetMapping("/mate_main")
	public ModelAndView mateMain(HttpServletRequest request, ModelAndView mv) {
		String currentPage = request.getParameter("currentPage");
		int pageNo = 1;

		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}

		String searchCondition = request.getParameter("searchCondition");
		String searchValue = request.getParameter("searchValue");

		int totalCount = mateService.selectTotalCount(searchCondition, searchValue);

		int limit = 10;		

		int buttonAmount = 5;

		SelectCriteria selectCriteria = null;
		if(searchValue != null && !"".equals(searchValue)) {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount, searchCondition, searchValue);
		} else {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		}
		System.out.println(selectCriteria);
		
		
		List<MlistDTO> placeList = mateService.searchMenuList(selectCriteria);
		
		
//		System.out.println("컨트롤러에서 조인 테스트 " + mateService.test());
		
		mv.addObject("placeList", placeList);
		mv.addObject("selectCriteria", selectCriteria);
		mv.setViewName("mate/mate_main");
		
		return mv;
	}
	
	@GetMapping("/detail/{mate}")
	public ModelAndView mapInfo(ModelAndView mv, @PathVariable String mate, 
			@ModelAttribute MlistDTO view, MemberDTO mem) {		
		
		MateAndMlist map = mateService.test1(Integer.valueOf(mate));	
		
		/* 조회수 증가 */
		mateService.addViews(Integer.valueOf(mate), view);
		
		for(Mlist mlist : map.getMlists()) {
			if(Integer.valueOf(mate) == mlist.getListNo()) {
				mv.addObject("mlist", mlist);
			}
		}		
		
		mateService.joinhelp(mem);
		
		mv.addObject("join", mem.getMateJoin());
		mv.addObject("map", map);
		mv.setViewName("mate/detail");
		
		return mv;
	}
	
	@PostMapping("/detail/{mate}")
	public ModelAndView join(@ModelAttribute MemberDTO mem , 
			@PathVariable String mate, ModelAndView mv, @RequestParam String nickName) {
		
		mateService.join(mem, nickName);		
		
		mv.setViewName("redirect:/mate/detail/" + Integer.valueOf(mate));
		
		return mv;
	}
	
	
	@GetMapping("/update/{mate}")
	public ModelAndView updateInfo(ModelAndView mv, @PathVariable String mate) {		
		
		
		MateAndMlist map = mateService.test1(Integer.valueOf(mate));		
				
		for(Mlist mlist : map.getMlists()) {
			if(Integer.valueOf(mate) == mlist.getListNo()) {
				mv.addObject("mlist", mlist);
			}
		}		
		
		mv.addObject("map", map);
		mv.setViewName("mate/update");
		
		return mv;
	}
	/* 수정 */
	@PostMapping("/update/{mate}")
	public ModelAndView update(@ModelAttribute MlistDTO mlist , @PathVariable String mate, ModelAndView mv) {
		
		mateService.update(mlist, Integer.valueOf(mate));
		
		mv.setViewName("redirect:/mate/detail/" + Integer.valueOf(mate));
		
		return mv;
		
	}
	
	@GetMapping("/regist")
	public void registPage() {}
	
	@GetMapping(value="/mateList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String findMateList(){

		Gson gson = new GsonBuilder()
			      .setDateFormat("yyyy-MM-dd hh:mm:ss:SSS")
			      .setPrettyPrinting()
			      .setFieldNamingPolicy(FieldNamingPolicy.IDENTITY)
			      .serializeNulls()
			      .disableHtmlEscaping()
			      .create();
		
		return gson.toJson(mateService.findAllMateList());
	}
	
	@PostMapping("/regist")
	public ModelAndView registMate(ModelAndView mv, MlistDTO newList) {

		System.out.println("newList" + newList);
		
		mateService.registNewMate(newList);			
		
		mv.setViewName("redirect:/mate/mate_main");
		
		return mv;
	}
	
	/* 삭제 */
	@DeleteMapping("/detail/{mate}")
	public String delete(@PathVariable String mate) {	
				
		mateService.delete(Integer.valueOf(mate));
		
		return "redirect:/mate/mate_main";
	}	
	
}
