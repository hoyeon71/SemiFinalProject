package com.example.jejuisabear.travel.service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.example.jejuisabear.paging.SelectCriteria;
import com.example.jejuisabear.travel.domain.ImageEntity;
import com.example.jejuisabear.travel.domain.TravelEntity;
import com.example.jejuisabear.travel.dto.ImageDTO;
import com.example.jejuisabear.travel.dto.TravelDTO;
import com.example.jejuisabear.travel.repository.ImageRepository;
import com.example.jejuisabear.travel.repository.TravelRepository;

@Service
public class TravelService {
	
	private final TravelRepository travelRepository;
	private final ImageRepository imageRepository;
	private final ModelMapper modelMapper;
	
	@Autowired
	public TravelService(TravelRepository travelRepository, ImageRepository imageRepository, ModelMapper modelMapper) {
		this.travelRepository = travelRepository;
		this.imageRepository = imageRepository;
		this.modelMapper = modelMapper;
	}
	
	public TravelDTO findTravelEntityByplaceNo(int placeNo) {

		TravelEntity travelEntity = travelRepository.findById(placeNo).get();
		return modelMapper.map(travelEntity, TravelDTO.class);
	}

	public ImageDTO findImageEntityByplaceImageNo(int placeImageNo) {
		
		ImageEntity imageEntity = imageRepository.findById(placeImageNo).get();
		return modelMapper.map(imageEntity, ImageDTO.class);
	}
	
	public List<TravelDTO> findTravelList() {
		
		List<TravelEntity> travelList = travelRepository.findAll(Sort.by("placeNo"));
		return travelList.stream().map(travelEntity -> modelMapper.map(travelEntity, TravelDTO.class)).collect(Collectors.toList());
	}

	public List<ImageDTO> findImageList() {
		
		List<ImageEntity> imageList = imageRepository.findAll(Sort.by("placeNo"));
		return imageList.stream().map(imageEntity -> modelMapper.map(imageEntity, ImageDTO.class)).collect(Collectors.toList());
	}


	public ImageDTO findImageEntityByplaceNo(int placeNo) {
		
		ImageEntity image = imageRepository.findImageByPlaceNo(placeNo);
		return modelMapper.map(image, ImageDTO.class);
	}

	public int selectTotalCount(String searchCondition, String searchValue) {
		
		int count = 0;
		if(searchValue != null) {
			if("placeName".equals(searchCondition)) {
				count = travelRepository.countByPlaceNameContaining(searchValue);
			}
			// 주소 검색
			if("placeAddress".equals(searchCondition)) {
				count = travelRepository.countByPlaceAddressContaining(searchValue);
			}
		} else {
			count = (int)travelRepository.count();
		}

		return count;
	}
	
	public List<TravelDTO> searchTravelList(SelectCriteria selectCriteria) {
		
		int index = selectCriteria.getPageNo() -1;
		int count = selectCriteria.getLimit();
		String searchValue = selectCriteria.getSearchValue();
		
		Pageable paging = PageRequest.of(index,  count, Sort.by("placeNo"));
		
		List<TravelEntity> travelList3 = new ArrayList<TravelEntity>();
		if(searchValue != null) {
			
			// 관광지명으로 검색
			if("placeName".equals(selectCriteria.getSearchCondition())) {
				travelList3 = travelRepository.findByPlaceNameContaining(selectCriteria.getSearchValue(), paging);
			}
			
			// 관광지 주소로 검색
			if("placeAddress".equals(selectCriteria.getSearchCondition())) {
				travelList3 = travelRepository.findByPlaceAddressContaining(selectCriteria.getSearchValue(), paging);
			}
		} else {
			travelList3 = travelRepository.findAll(paging).toList();
		}

		return travelList3.stream().map(travelEntity -> modelMapper.map(travelEntity, TravelDTO.class)).collect(Collectors.toList());
	}

	@Transactional
	public void modifyTravel(TravelDTO travel) {
		
		TravelEntity foundTravel = travelRepository.findById(travel.getPlaceNo()).get();
		foundTravel.setPlaceName(travel.getPlaceName());
		foundTravel.setPlaceAddress(travel.getPlaceAddress());
		foundTravel.setPlaceDesc(travel.getPlaceDesc());
	}
	
	@Transactional
	public void travelRegist(TravelDTO newTravel) {
		
		travelRepository.save(modelMapper.map(newTravel, TravelEntity.class));
	}
	
	/* 관광지 삭제 */
   @Transactional
   public void delete(int placeNo) {
      travelRepository.deleteById(placeNo);
   }
}
	

