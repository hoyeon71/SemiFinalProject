package com.example.jejuisabear.matching.repository;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.example.jejuisabear.matching.entity.Mlist;

public interface MlistRepository extends JpaRepository<Mlist, Integer>{
	
	@Modifying
	@Transactional
	@Query(value = "update Mlist m set m.mateViews = m.mateViews + 1 where m.listNo = :no")
	int updateViews(int no);
	
	int countByMatePlaceContaining(String searchValue);

    int countByMateMemberEquals(int no);

    List<Mlist> findByMatePlaceContaining(String searchValue, Pageable paging);

    List<Mlist> findByMateMemberEquals(int no, Pageable paging);
	
}
