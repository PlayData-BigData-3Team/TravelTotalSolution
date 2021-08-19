package com.work.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.work.dao.ReviewBoardDao;
import com.work.dto.Criteria;
import com.work.dto.ReviewBoard;
import com.work.util.*;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ReviewBoardService {
	@Autowired
	private ReviewBoardDao ReviewBoardDao;

	/** 리뷰등록 서비스 */	
	public int addReview(String memberId, ReviewBoard dto) {
		int postNo = 0;
		int views = 1;
		dto.setBoardLike(0);
		dto.setMemberId(memberId);
		dto.setPostNo(postNo);
		dto.setViews(views);
		dto.setCreationDate(Utility.getCurrentDate());
		
		int result = ReviewBoardDao.addReview(dto);
		
		log.debug("dao result: " + result);
		return result;
	}
	
	/** 리뷰 리스트 조회 */
	public List<ReviewBoard> reviewList() {
		return ReviewBoardDao.selectReviewList();
	}

	/** 리뷰 상세 조회 */
	public ReviewBoard reviewDetail(int postNo) {
		return ReviewBoardDao.selectReviewBoard(postNo);
	}

	/** 리뷰 변경 */
	public int reviewUpdate(ReviewBoard dto) {
		return ReviewBoardDao.updateReviewBoard(dto);
	}

	/**리뷰 삭제 */
	public int reviewBoardDelete(int postNo) {
		return ReviewBoardDao.deleteReviewBoard(postNo);
	}

	/**리뷰 조회 수 증가 */
	public int updateReviewCount(int views, int postNo) {
		return ReviewBoardDao.updateReviewCount(views, postNo);
	}

	/** 페이징 처리 1 */
	public int boardListCnt() throws Exception {
		return ReviewBoardDao.boardListCnt();
	}
	
	/** 페이징 처리 1 */
	public List<Map<String, Object>> boardList(Criteria cri) throws Exception {
		return ReviewBoardDao.boardList(cri);
	}

	/** 내가 쓴 리뷰 갯수 */
	public int myReviewCnt(String memberId) {
		return ReviewBoardDao.myReviewCnt(memberId);
	}
	
}



