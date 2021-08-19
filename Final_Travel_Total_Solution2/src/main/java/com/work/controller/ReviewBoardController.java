package com.work.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.work.dto.Criteria;
import com.work.dto.Member;
import com.work.dto.Paging;
import com.work.dto.ReviewBoard;
import com.work.service.ReviewBoardService;
import com.work.util.Utility;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class ReviewBoardController {
	
	@Autowired
	public ReviewBoardService ReviewBoardService;
	
	/**
	 * 리뷰 등록 페이지 이동
	 * @param session 
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/review/reviewWritePage")
	public String reviewWritePage(HttpSession session, Criteria cri, Model model) throws Exception {
		
		String memberId = (String)session.getAttribute("memberId");
		session.setAttribute("sessionId", memberId);
		
		String creationDate = Utility.getCurrentDate();
		session.setAttribute("currentDate", creationDate);
		
		// recentPost
		// 전체 글 개수
        int boardListCnt = ReviewBoardService.boardListCnt();
        
        // 페이징 객체
        Paging paging = new Paging();
        paging.setCri(cri);
        paging.setTotalCount(boardListCnt);    

		 List<Map<String, Object>> list = ReviewBoardService.boardList(cri);   
	     model.addAttribute("list", list); 
		
		return "review/reviewWritePage";
	}
	
	/**
	 * 리뷰 등록 기능
	 * @param session
	 * @param dto
	 * @param model
	 * @return
	 */
	@RequestMapping("/review/addReview")
	public String addReview(HttpSession session, ReviewBoard dto, Model model) {
		
		String memberId = (String)session.getAttribute("memberId");
		int result = ReviewBoardService.addReview(memberId, dto);
		if (result == 1) {
			return "redirect:http://localhost:8070/review/reviewList";
		} else {
			return "redirect:http://localhost:8070/review/reviewList";
		}
	}
	
	/**
	 * 리뷰 리스트
	 * @param model
	 * @param cri
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/review/reviewList")
	public String reviewList(Model model, Criteria cri, HttpSession session) throws Exception {
//		List<ReviewBoard> list = ReviewBoardService.reviewList();
//		model.addAttribute("list", list);
		
		 // 전체 글 개수
        int boardListCnt = ReviewBoardService.boardListCnt();
        
        // 페이징 객체
        Paging paging = new Paging();
        paging.setCri(cri);
        paging.setTotalCount(boardListCnt);    
        
        List<Map<String, Object>> list = ReviewBoardService.boardList(cri);
        
        model.addAttribute("list", list);    
        model.addAttribute("paging", paging);    
                
        return "review/reviewList";

	}
	
	/**
	 * 리뷰 리스트에서 상세보기 페이지 이동
	 * @param postNo
	 * @param views
	 * @param model
	 * @param session
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="review/reviewDetail")
	public String reviewDetail(@RequestParam("postNo") int postNo, Criteria cri, Model model, HttpSession session) throws Exception {
		
		// 세션객체에 존재하는 아이디를 받아와서 저장한 다음 모델 뷰를 통해 넘기기
		String memberId2 = (String)session.getAttribute("memberId");
		
		String grade = (String)session.getAttribute("grade");
		
		// 변수명 sessionId , 값 memberId
		model.addAttribute("sessionId", memberId2);
		
		model.addAttribute("grade", grade);
		
		ReviewBoard dto = ReviewBoardService.reviewDetail(postNo);
		model.addAttribute("dto", dto);
		
		// recentPost
		// 전체 글 개수
	    int boardListCnt = ReviewBoardService.boardListCnt();
	    
	    // 페이징 객체
	    Paging paging = new Paging();
	    paging.setCri(cri);
	    paging.setTotalCount(boardListCnt);    
	
		 List<Map<String, Object>> list = ReviewBoardService.boardList(cri);   
	     model.addAttribute("list", list); 
 		
		return "review/reviewDetail";
	}
	
	/**
	 * 리뷰 수정 폼 이동
	 * @param postNo
	 * @param model
	 * @param session
	 * @return
	 * @throws Exception
	 */
	 @RequestMapping(value="/review/reviewModifyForm")
	public String reviewModifyForm(@RequestParam("postNo") int postNo, Criteria cri, Model model, HttpSession session) throws Exception {	
		 
		 String memberId2 = (String)session.getAttribute("memberId");
		 model.addAttribute("sessionId", memberId2);
		 
		 ReviewBoard dto = ReviewBoardService.reviewDetail(postNo);
		 model.addAttribute("dto", dto);
		 
			// recentPost
			// 전체 글 개수
		    int boardListCnt = ReviewBoardService.boardListCnt();
		    
		    // 페이징 객체
		    Paging paging = new Paging();
		    paging.setCri(cri);
		    paging.setTotalCount(boardListCnt);    
		
			 List<Map<String, Object>> list = ReviewBoardService.boardList(cri);   
		     model.addAttribute("list", list); 
		
		return "/review/reviewModifyForm";
	}
	 
	 /**
	  * 리뷰 수정 기능
	  * @param dto
	  * @return
	  * @throws Exception
	  */
	 @RequestMapping(value="/reviewModify", method= RequestMethod.POST)
	public String reviewModify(ReviewBoard dto) throws Exception {	
		 ReviewBoardService.reviewUpdate(dto);
		return "redirect:http://localhost:8070/review/reviewList";
	} 
	 
	 /**
	  * 리뷰 삭제
	  * @param postNo
	  * @return
	  * @throws Exception
	  */
	 @RequestMapping(value="review/reviewDelete")
	    public String reviewBoardDelete(@RequestParam("postNo") int postNo) throws Exception {
		 ReviewBoardService.reviewBoardDelete(postNo);
	     return "redirect:http://localhost:8070/review/reviewList";
	    }
	 
	 /**
	  * 테스트 컨트롤러
	  * @return
	  * @throws Exception
	  */
	 @RequestMapping(value="review/test")
	    public String test() throws Exception {
	     return "review/test";
	    }
	 
	}
	

