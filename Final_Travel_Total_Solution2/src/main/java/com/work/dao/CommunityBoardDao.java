package com.work.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.work.dto.CommunityBoard;
import com.work.dto.Member;
import com.work.util.Criteria;

@Mapper
public interface CommunityBoardDao {


	/** 동행 등록 성공 
	 * @param memberId */
	public int addCommunity(CommunityBoard dto);
	
	/** 동행 조회 */
	public List<CommunityBoard> selectCommunityList();
	
	// 게시글 삭제
    public void communityDelete(int postNo) throws Exception;
	
	/** 동행 게시물 읽기 */
	public CommunityBoard boardRead(int postNo);
	
	/** 동행 게시물 수정폼 */
	public CommunityBoard boardModifyForm(int postNo);
	
	// 게시글 수정
    public void boardModify(CommunityBoard dto) throws Exception;
    
    // 조회수 올리기
 	public int updateView(int postNo);
 	
 	// 게시글 페이징
 	public List<Map<String, Object>> boardList(com.work.dto.Criteria cri) throws Exception;
 	
 	// 게시글 총 갯수
 	public int boardListCnt() throws Exception;

 	// 내가 쓴 동행글 갯수
	public int myCommunityCnt(String memberId);


	  

}
