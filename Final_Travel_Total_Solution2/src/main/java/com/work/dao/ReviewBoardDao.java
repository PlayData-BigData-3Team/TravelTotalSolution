package com.work.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.work.dto.Criteria;
import com.work.dto.ReviewBoard;

@Mapper
public interface ReviewBoardDao {
//	/** 로그인 : 등급 반환 */
//	public String login(String memberId, String memberPw);
//	
//	/** 로그인 : 도메인 반환 */
//	public ReviewBoard loginToMember(String memberId, String memberPw);
//	
//	/** 전체회원 조회 */
//	public List<ReviewBoard> selectMemberList();
//	
//	/** 회원상세조회 */
//	public ReviewBoard selectMember(String memberId);
//	
//	/** 회원가입 */
//	public int insertMember(ReviewBoard dto);
//
//	/** 다중조건 검색 */
//	public List<ReviewBoard> selectMemberListByCondition(String condition, String keyword);
//
//	/** 다중조건 조회 : 다중 아이디 조회: ArrayList */
//	public List<ReviewBoard> selectMemberListByConditionToList(String condition, List<String> memberIdList);

	/** 리뷰 등록 */
	public int addReview(ReviewBoard dto);

	/** 리뷰 리스트 조회 */
	public List<ReviewBoard> selectReviewList();

	/** 리뷰 상세 조회 */
	public ReviewBoard selectReviewBoard(int postNo);

	/** 리뷰 변경 */
	public int updateReviewBoard(ReviewBoard dto);

	/** 리뷰 삭제 */
	public int deleteReviewBoard(int postNo);

	/** 리뷰 조회수 증가*/
	public int updateReviewCount(int views, int postNo);

	/** 페이징 처리 1 */
	public int boardListCnt() throws Exception;

	/** 페이징 처리 2 */
	public List<Map<String, Object>> boardList(Criteria cri) throws Exception;

	/** 내가 쓴 리뷰 갯수 */
	public int myReviewCnt(String memberId);
	

}
