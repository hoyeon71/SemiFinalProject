package com.example.jejuisabear.travel.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.jejuisabear.travel.domain.ImageEntity;

@Repository
public interface ImageRepository extends JpaRepository<ImageEntity, Integer> {

	@Query(value = "SELECT * FROM PLACE_IMAGES A WHERE A.PLACE_NO = ?1 AND A.P_IMAGE_STAT = 'C'", nativeQuery = true)
	public ImageEntity findImageByPlaceNo(int placeNo);
	

}