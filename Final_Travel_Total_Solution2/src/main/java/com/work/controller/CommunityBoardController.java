package com.work.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.work.dto.Member;
import com.work.dto.Paging;
import com.work.dto.CommunityBoard;
import com.work.dto.Criteria;
import com.work.service.CommunityBoardService;
import com.work.util.*;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class CommunityBoardController {
	
	@Autowired
	public CommunityBoardService CommunityBoardService;
	
	//게시판 폼
	@RequestMapping("/community/communityForm")
	public String communityWritePage(HttpSession session, Criteria cri, Model model) throws Exception {
		
		String memberId = (String)session.getAttribute("memberId");
		session.setAttribute("sessionId", memberId);
		
		String creationDate = Utility.getCurrentTime();
		session.setAttribute("currentDate", creationDate);
		
		// recentPost
		// 전체 글 개수
        int boardListCnt = CommunityBoardService.boardListCnt();
        
        // 페이징 객체
        Paging paging = new Paging();
        paging.setCri(cri);
        paging.setTotalCount(boardListCnt); 

		
//		List<CommunityBoard> list = CommunityBoardService.selectCommunityList();
		List<Map<String, Object>> list = CommunityBoardService.boardList(cri);

		
		model.addAttribute("list", list);
		
		
		return "community/communityForm";
	}
	
	//게시판 목록
	@RequestMapping("/community/communityList")
	public String communityList(Criteria cri, Model model, HttpSession session) throws Exception {
		
		// 전체 글 개수
        int boardListCnt = CommunityBoardService.boardListCnt();
        
        // 페이징 객체
        Paging paging = new Paging();
        paging.setCri(cri);
        paging.setTotalCount(boardListCnt); 

		
//		List<CommunityBoard> list = CommunityBoardService.selectCommunityList();
		List<Map<String, Object>> list = CommunityBoardService.boardList(cri);

		
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);    
		
		return "community/communityList";
	}
	
	//게시판 추가 기능
	@RequestMapping("/community/addCommunity")
	public String addCommunity(HttpSession session, CommunityBoard dto, Model model) {
		
		String memberId = (String)session.getAttribute("memberId");
		
		int result = CommunityBoardService.addCommunity(memberId, dto);
		if (result == 1) {
//			model.addAttribute("message", "[리뷰 등록 성공] 리뷰 등록 성공");
			return "redirect:/community/communityList";
		} else {
//			model.addAttribute("message", "[리뷰 등록 실패] 리뷰 등록에 실패했습니다.");
			return "community/communityForm";
		}
	}
	
	//게시판삭제
	@RequestMapping(value="/community/communityDelete")
    public String boardDelete(@RequestParam("postNo") int postNo) throws Exception {
        
		CommunityBoardService.communityDelete(postNo);
        return "redirect:communityList";
    }
	
	// 게시판 내용 읽기
    @RequestMapping(value="/community/communityRead")
    public String boardRead(@RequestParam("postNo") int postNo, Criteria cri, Model model, HttpSession session) throws Exception {
    	
    	// 아이디 세션에서 받아와서 현재로그인 멤버 아이디저장
    	String memberId2 = (String)session.getAttribute("memberId");
		model.addAttribute("sessionId", memberId2);
		
		String grade = (String)session.getAttribute("grade");
		model.addAttribute("grade", grade);
    	
    	CommunityBoard dto = CommunityBoardService.boardRead(postNo);
        model.addAttribute("dto", dto);
        
		// recentPost
		// 전체 글 개수
	     int boardListCnt = CommunityBoardService.boardListCnt();
	     
	     // 페이징 객체
	     Paging paging = new Paging();
	     paging.setCri(cri);
	     paging.setTotalCount(boardListCnt); 
	
		List<Map<String, Object>> list = CommunityBoardService.boardList(cri);
            
     // 기존의 게시글 자세히 보기에서 추가된 부분
        CommunityBoardService.updateView(postNo);
        model.addAttribute("list", list);
        
        System.out.println(dto);
        return "/community/communityRead";    
    }
    // 게시판 내용 수정폼 들어가기
    @RequestMapping(value="/community/communityModifyForm")
    public String boardModify(@RequestParam("postNo") int postNo, Criteria cri, Model model) throws Exception {
    	CommunityBoard dto = CommunityBoardService.boardRead(postNo);
    	model.addAttribute("dto", dto);
    	System.out.println(dto);
    	
    	
    	// recentPost
    			// 전체 글 개수
    		     int boardListCnt = CommunityBoardService.boardListCnt();
    		     
    		     // 페이징 객체
    		     Paging paging = new Paging();
    		     paging.setCri(cri);
    		     paging.setTotalCount(boardListCnt); 
    		
    			List<Map<String, Object>> list = CommunityBoardService.boardList(cri);
    	            
    	     // 기존의 게시글 자세히 보기에서 추가된 부분
    	        CommunityBoardService.updateView(postNo);
    	        model.addAttribute("list", list);
    	
    	return "/community/communityModifyForm";    
    }
    
 // 게시글 수정
    @RequestMapping(value="/communityModify", method= RequestMethod.POST)
    public String boardModify(CommunityBoard dto) throws Exception {
        
    	CommunityBoardService.boardModify(dto);
    
        return "redirect:/community/communityList";
    }

	

	

}
