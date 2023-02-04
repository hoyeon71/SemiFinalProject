package com.example.jejuisabear.matching.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.jejuisabear.matching.entity.Mate;

public interface MateRepository extends JpaRepository<Mate, Integer> {

	 @Query(value = "SELECT m FROM Mate m ORDER BY m.markerName") 
	 public List<Mate> findAllMateList();	 
	 
//	 @Query(value = "SELECT m, l FROM Mate m JOIN Mlist l on m.markerName = l.matePlace")
//	 public List<Mate> jointest();
	 
	 
}
