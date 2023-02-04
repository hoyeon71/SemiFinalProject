package com.example.jejuisabear.travel.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.jejuisabear.travel.domain.TravelEntity;

@Repository
public interface TravelRepository extends JpaRepository<TravelEntity, Integer> {

	int countByPlaceNameContaining(String searchValue);
	
	int countByPlaceAddressContaining(String searchValue);

	List<TravelEntity> findByPlaceNameContaining(String searchValue, Pageable paging);

	List<TravelEntity> findByPlaceAddressContaining(String searchValue, Pageable paging);

//	@Query(value = "SELECT * FROM JEJU_PLACE A WHERE A.PLACE_NO = ?0", nativeQuery = true)
//	public List<TravelEntity> findTravelList();
	
}
