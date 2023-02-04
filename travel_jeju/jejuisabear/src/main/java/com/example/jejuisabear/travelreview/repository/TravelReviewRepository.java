package com.example.jejuisabear.travelreview.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.jejuisabear.travelreview.entity.TravelReview;

public interface TravelReviewRepository extends JpaRepository<TravelReview, Integer>{

	List<TravelReview> findByRevTitleContaining(String searchValue, Pageable paging);
	int countByRevTitleContaining(String searchValue);
	
	
	
}
