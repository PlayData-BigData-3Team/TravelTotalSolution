package com.work.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.work.dao.CommunityBoardDao;
import com.work.dto.CommunityBoard;
import com.work.dto.Member;
import com.work.util.Criteria;
import com.work.util.Utility;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class CommunityBoardService {
	@Autowired
	private CommunityBoardDao CommunityBoardDao;


	/** 동행등록 서비스 
	 * @param memberId */	
	public int addCommunity(String memberId, CommunityBoard dto) {
		int views = 1;
		dto.setBoardLike(2);
		dto.setMemberId(memberId);
		dto.setViews(views);
		dto.setCreationDate(Utility.getCurrentTime());
		int result = CommunityBoardDao.addCommunity(dto);
		return result;
	}
	
	/** 동행 리스트 */
	public List<CommunityBoard> selectCommunityList() {
		return CommunityBoardDao.selectCommunityList();
	}
	
	// 게시글 삭제
    public void communityDelete(int postNo) throws Exception {
    	CommunityBoardDao.communityDelete(postNo);
   }
	
	 // 게시판 읽기
    public CommunityBoard boardRead(int postNo) throws Exception {
           return CommunityBoardDao.boardRead(postNo);
    }
    // 게시판 수정폼
    public CommunityBoard boardModifyForm(int postNo) throws Exception {
    	return CommunityBoardDao.boardModifyForm(postNo);
    }
    // 게시판 수정
    public void boardModify(CommunityBoard dto) throws Exception {
    	CommunityBoardDao.boardModify(dto);
    }
    
    // 조회수 올리기
 	public int updateView(int postNo) throws Exception {
 		return CommunityBoardDao.updateView(postNo);
 	}
 	
 	// 리스트 페이징 기능
 	public int boardListCnt() throws Exception {
        return CommunityBoardDao.boardListCnt();
	 }
	 
	 public List<Map<String, Object>> boardList(com.work.dto.Criteria cri) throws Exception {
	        return CommunityBoardDao.boardList(cri);
	}

	// 내가 쓴 동행 글 갯수 
	public int myCommunityCnt(String memberId) {
		return CommunityBoardDao.myCommunityCnt(memberId);
	}





	
}



