package com.example.jejuisabear.matching.service;

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

import com.example.jejuisabear.matching.dto.MateDTO;
import com.example.jejuisabear.matching.dto.MlistDTO;
import com.example.jejuisabear.matching.entity.Mate;
import com.example.jejuisabear.matching.entity.MateAndMlist;
import com.example.jejuisabear.matching.entity.Mlist;
import com.example.jejuisabear.matching.repository.MateAndMlistRepository;
import com.example.jejuisabear.matching.repository.MateRepository;
import com.example.jejuisabear.matching.repository.MlistRepository;
import com.example.jejuisabear.member.dto.MemberDTO;
import com.example.jejuisabear.member.entity.MemberEntity;
import com.example.jejuisabear.member.repository.MemberRepository;
import com.example.jejuisabear.paging.SelectCriteria;

@Service
public class MateService {

	private final MateRepository mateRepository;
	private final MlistRepository mlistRepository;
	private final MateAndMlistRepository mateAndMlistRepository;
	private final MemberRepository memberRepository;
	private final ModelMapper modelMapper;
	
	@Autowired
	public MateService(MateAndMlistRepository mateAndMlistRepository, MateRepository mateRepository, MlistRepository mlistRepository, ModelMapper modelMapper, MemberRepository memberRepository) {
		this.mateRepository = mateRepository;
		this.mlistRepository = mlistRepository;
		this.mateAndMlistRepository = mateAndMlistRepository;
		this.modelMapper = modelMapper;
		this.memberRepository = memberRepository;
	}	
	
	public List<MateDTO> mapInfo() {
		
		List<Mate> mateList = mateRepository.findAll(Sort.by("mapNo"));
				
		
		return mateList.stream().map(mate -> modelMapper.map(mate, MateDTO.class)).collect(Collectors.toList());
	}
	
	public MateDTO findByPlaceName(int mate) {
		
		
		Mate matePlace = mateRepository.findById(mate).get();
		
		return modelMapper.map(matePlace, MateDTO.class);
	}

	public List<MateDTO> findAllMateList() {
		
		List<Mate> mateList = mateRepository.findAllMateList();
		
		
		return mateList.stream().map(name -> modelMapper.map(name, MateDTO.class)).collect(Collectors.toList());
	}
	
	/* 조회수 */
	public int addViews(int no, MlistDTO view) {
				
		
		return mlistRepository.updateViews(no);
	}
	
	@Transactional
	public void registNewMate(MlistDTO newList) {
		
		
		mlistRepository.save(modelMapper.map(newList, Mlist.class));
		
	}


	public MlistDTO findByPlaceNameOfList(int mate) {
		
		Mlist mateList = mlistRepository.findById(mate).get();
		
		return modelMapper.map(mateList, MlistDTO.class);
	}	
	
	
	
	public MateAndMlist test1(int mate) {
		
		Mlist m = mlistRepository.findById(mate).get();
		
		MateAndMlist mlists = mateAndMlistRepository.findById(m.getMapNo()).get();
		
		
		return mlists;
	}
	
	public List<MateAndMlist> test2() {
		List<MateAndMlist> mlists = mateAndMlistRepository.findAll();
		
		
		return mlists;
	}
	
	// 수정 기능
	@Transactional
	public void update(MlistDTO mlist, int mate) {
		
		Mlist m = mlistRepository.findById(mate).get();

		
		m.setMateMember(mlist.getMateMember());
		m.setMateTime(mlist.getMateTime());
		m.setMateDate(mlist.getMateDate());
		m.setMateCharge(mlist.getMateCharge());
		m.setMapNo(mlist.getMapNo());
		m.setMateContent(mlist.getMateContent());
		m.setMatePlace(mlist.getMatePlace());
		
	}
	
	/* 참가 상태 변경 */
	@Transactional
	public void join(MemberDTO mem, String nick) {
		
		MemberEntity member = memberRepository.findMemberByNickname(nick);
		
		
		if(member.getMateJoin().equals("Y")) {
			member.setMateJoin("N");
		} else {
			member.setMateJoin("Y");
		}
	}
	
	/* 참가 상태 보조기능 */
	public String joinhelp(MemberDTO mem) {
		
		List<MemberEntity> member = memberRepository.findAll();
		
		for(MemberEntity mm : member) {
			if(mm.getMateJoin().equals("Y")) {
				mem.setMateJoin(mm.getMateJoin());
			} else {
				mem.setMateJoin(mm.getMateJoin());
			}
		}
		return mem.getMateJoin();
		
	}
	

	// 삭제 기능
	@Transactional
	public void delete(int mate) {
		mlistRepository.deleteById(mate);		
	}
	
	public int selectTotalCount(String searchCondition, String searchValue) {

		int count = 0;
		if(searchValue != null) {
			if("matePlace".equals(searchCondition)) {
				count = mlistRepository.countByMatePlaceContaining(searchValue);
			}

			if("mateMember".equals(searchCondition)) {
				count = mlistRepository.countByMateMemberEquals(Integer.valueOf(searchValue));
			}
			} else {
				count = (int)mlistRepository.count();
			}

		return count;
	}
	
	public List<MlistDTO> searchMenuList(SelectCriteria selectCriteria) {

		int index = selectCriteria.getPageNo() - 1;	
		int count = selectCriteria.getLimit();
		String searchValue = selectCriteria.getSearchValue();

		Pageable paging = PageRequest.of(index, count, Sort.by(Sort.Direction.DESC, "listNo"));

		List<Mlist> mateList = new ArrayList<Mlist>();
		if(searchValue != null) {

			if("matePlace".equals(selectCriteria.getSearchCondition())) {
				mateList = mlistRepository.findByMatePlaceContaining(selectCriteria.getSearchValue(), paging);
			}

			if("mateMember".equals(selectCriteria.getSearchCondition())) {
				mateList = mlistRepository.findByMateMemberEquals(Integer.valueOf(selectCriteria.getSearchValue()), paging);
			}
		} else {
			mateList = mlistRepository.findAll(paging).toList();
		}

		return mateList.stream().map(mate -> modelMapper.map(mate, MlistDTO.class)).collect(Collectors.toList());
	}
}
