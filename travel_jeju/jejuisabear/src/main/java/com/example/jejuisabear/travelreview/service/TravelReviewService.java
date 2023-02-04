package com.example.jejuisabear.travelreview.service;		
		
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.jejuisabear.paging.SelectCriteria;
import com.example.jejuisabear.travel.dto.ImageDTO;
import com.example.jejuisabear.travelreview.dto.TravelReviewDTO;
import com.example.jejuisabear.travelreview.entity.TravelReview;
import com.example.jejuisabear.travelreview.repository.TravelReviewRepository;
import com.google.gson.JsonElement;			
		
		
@Service		
public class TravelReviewService {		
		
	private  final TravelReviewRepository travelreviewRepository;	
	private  final ModelMapper modelMapper;	
		
	@Autowired	
	public TravelReviewService(TravelReviewRepository travelreviewRepository, ModelMapper modelMapper) {	
		this.travelreviewRepository = travelreviewRepository;
		this.modelMapper = modelMapper;
	}	
	
	/* 여행 후기 리스트 */
	public List<TravelReviewDTO> findTravelReview() {	
		
		List<TravelReview> travelreviewList = travelreviewRepository.findAll(Sort.by("revNo").descending());
		return travelreviewList.stream().map(reviewList -> modelMapper.map(reviewList, TravelReviewDTO.class)).collect(Collectors.toList());
	}

	
	/* 여행 후기 내용 페이지 */
	public TravelReviewDTO findTravelReviewByrevNo(int revNo) {
		
		TravelReview travelreview = travelreviewRepository.findById(revNo).get();
		return modelMapper.map(travelreview, TravelReviewDTO.class);
	}

	/* 검색 및 페이징 처리 */
	public List<TravelReviewDTO> reviewList(SelectCriteria selectCriteria) {
		int index = selectCriteria.getPageNo() - 1;			// Pageble객체를 사용시 페이지는 0부터 시작(1페이지가 0)
		int count = selectCriteria.getLimit();
		String searchValue = selectCriteria.getSearchValue();

		/* 페이징 처리와 정렬을 위한 객체 생성 */
		Pageable paging = PageRequest.of(index, count, Sort.by("revNo").descending());	// Pageable은 org.springframework.data.domain패키지로 import

		List<TravelReview> riveiwList = new ArrayList<TravelReview>();
		if(searchValue != null) {

			/* 관광지명 검색 */
			if("placeName".equals(selectCriteria.getSearchCondition())) {
				riveiwList = travelreviewRepository.findByRevTitleContaining(selectCriteria.getSearchValue(), paging);
			}

		} else {
			riveiwList = travelreviewRepository.findAll(paging).toList();
		}

		/* 자바의 Stream API와 ModelMapper를 이용하여 entity를 DTO로 변환 후 List<MenuDTO>로 반환 */
		return riveiwList.stream().map(review -> modelMapper.map(review, TravelReviewDTO.class)).collect(Collectors.toList());
	}

	public int selectTotalCount(String searchCondition, String searchValue) {
		int count = 0;
		if(searchValue != null) {
			if("revTitle".equals(searchCondition)) {
				count = travelreviewRepository.countByRevTitleContaining(searchValue);
			}

		} else {
			count = (int)travelreviewRepository.count();
		}
		return count;
	}

	/* 여행후기 작성 */
	@Transactional
	public void registNewReview(TravelReviewDTO newReview) {
		
		System.out.println("여행 후기 작성 서비스: " + newReview);
		
		travelreviewRepository.save(modelMapper.map(newReview, TravelReview.class));
	}
	
	/* 여행후기 삭제 */
	@Transactional
	public void delete(int revNo) {
		travelreviewRepository.deleteById(revNo);
	}

}		
