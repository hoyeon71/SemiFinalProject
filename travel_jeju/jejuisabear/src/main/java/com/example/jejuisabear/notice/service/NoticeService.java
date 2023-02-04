package com.example.jejuisabear.notice.service;

import java.util.List;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.example.jejuisabear.notice.domain.NoticeEntity;
import com.example.jejuisabear.notice.dto.NoticeBoardDTO;
import com.example.jejuisabear.notice.dto.NoticeDTO;
import com.example.jejuisabear.notice.repository.NoticeListRepository;
import com.example.jejuisabear.notice.repository.NoticeRepository;

@Service
public class NoticeService {
	
	private final NoticeRepository noticeRepository;
	private final NoticeListRepository noticeListRepository; 
	private final ModelMapper modelMapper;
	
	@Autowired
	public NoticeService(NoticeRepository noticeRepository, NoticeListRepository noticeListRepository, ModelMapper modelMapper) {
		this.noticeRepository = noticeRepository;
		this.noticeListRepository = noticeListRepository;
		this.modelMapper = modelMapper;
	}
	
	/* 공지사항 글 페이지 */
	public NoticeDTO findNotice(int noticelistNo) {
		
		NoticeEntity noticeEntity = noticeRepository.findById(noticelistNo).get();
		return modelMapper.map(noticeEntity, NoticeDTO.class);
	}
	
	/* 공지사항 리스트 */
	public List<NoticeDTO> findNotice() {
		List<NoticeEntity> noticeList = noticeListRepository.findAll(Sort.by(Sort.Direction.DESC,"noticeNo"));
		
		return noticeList.stream().map(noticeEntity -> modelMapper.map(noticeEntity, NoticeDTO.class)).collect(Collectors.toList());
	}

	/* 공지사항 작성 */
	@Transactional
	public void registerNotice(NoticeDTO newNotice) {
		System.out.println("공지사항 작성 서비스: " + newNotice);
		
		noticeRepository.save(modelMapper.map(newNotice, NoticeEntity.class));
	}
	
	/* 공지사항 삭제 */
	@Transactional
	public void delete(int notice) {
		noticeRepository.deleteById(notice);
	}

}
