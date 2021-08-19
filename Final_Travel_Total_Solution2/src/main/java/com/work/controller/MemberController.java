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

import com.work.dto.Criteria;
import com.work.dto.Member;
import com.work.dto.Paging;
import com.work.service.CommunityBoardService;
import com.work.service.MemberService;
import com.work.service.ReviewBoardService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MemberController {
	
	@Autowired
	public MemberService memberService;
	
	@Autowired
	public ReviewBoardService reviewBoardService;
	
	@Autowired
	public CommunityBoardService communityBoardService;
	
	
	@RequestMapping("/main")
	public String main(Model model, Criteria cri, HttpSession session) throws Exception {
		
		int boardListCnt = reviewBoardService.boardListCnt();
        
        // 페이징 객체
        Paging paging = new Paging();
        paging.setCri(cri);
        paging.setTotalCount(boardListCnt);    
        
        List<Map<String, Object>> list = reviewBoardService.boardList(cri);
        
        model.addAttribute("list", list);    
        model.addAttribute("paging", paging);    

		return "main"; 
	}
	
	@RequestMapping("/member/loginjoinForm")
	public String loginForm() {
		return "member/loginjoinForm";
	}
	
	/*
	 * @RequestMapping("/member/joinForm") public String joinForm(Model model,
	 * HttpSession session) { return "member/joinForm"; }
	 * 
	 * @RequestMapping("/member/loginForm") public String loginForm() { return
	 * "member/loginForm"; }
	 */
	
	@RequestMapping("/member/join")
	public String join(Member dto, Model model) {
		int result = memberService.addMember(dto);
		if (result == 1) {
//			model.addAttribute("message", "[회원가입성공] 로그인 후 서비스 이용하세요");
			return  "redirect:/member/loginjoinForm";
		} else {
//			model.addAttribute("message", "[회원가입실패] 가입 정보를 다시 확인하시기 바랍니다.");
			return "redirect:/member/loginjoinForm";
		}
	}

	@RequestMapping("/member/login")
	public String login(String memberId, String memberPw, Model model, HttpSession session) {
		String grade = memberService.login(memberId, memberPw);
		Member dto = memberService.loginToMember(memberId, memberPw);
		
		if (grade != null && dto != null) {
			session.setAttribute("memberId", memberId); 
			model.addAttribute("memberId", memberId);
			session.setAttribute("grade", grade); 
			session.setAttribute("dto", dto); 
			return "/main";	
		} else {
//			model.addAttribute("message", "[로그인 실패] 로그인 정보를 다시 확인하시기 바랍니다.");
			return "/main";
		}
	}
	
	@RequestMapping("/admin/memberList")
	public String memberList(Model model, HttpSession session) {
		List<Member> list = memberService.memberList();
		model.addAttribute("list", list);
		return "/admin/memberList";
	}
	
	@RequestMapping("/admin/memberDetail")
	public String memberDetail(String memberId, Model model) {
		Member dto = memberService.memberDetail(memberId);
		model.addAttribute("dto", dto);
		return "/admin/memberDetail";
	}
	
	@RequestMapping("/member/logout")
	public String logout(HttpSession session) {
		Enumeration<String> attributes = session.getAttributeNames();
		while (attributes.hasMoreElements()) {
			String attribute = attributes.nextElement();
			session.removeAttribute(attribute);
		}
		session.invalidate();
		return "redirect:/main";
	}
	
	@RequestMapping("/admin/multipleCondition")
	public String multipleCondition(String condition, String keyword, Model model) {
		List<Member> list = null;
		
		if(condition.equals("memberId") && keyword.contains(",")) { 
			String[] memberIdArray = keyword.split(","); 
			
			List<String> memberIdList = new ArrayList<String>();	
			for (String memberId : memberIdArray) {
				memberIdList.add(memberId.trim());
			}
			
			list = memberService.memberListByConditionToList(condition, memberIdList);
		} else {
			list = memberService.memberListByCondition(condition, keyword);
		}
		if (list.isEmpty()) {
			model.addAttribute("message", "검색 조건에 해당하는 데이터가 없습니다.");
		}
		model.addAttribute("list", list);
		return "redirect:/admin/memberList";
	}
	
	@RequestMapping("/member/myInfoDetail")
	   public String myInfo(String memberId, HttpSession session, Model model) {
			/* String memberId2 = (String)session.getAttribute("memberId"); */
		   Member dto = memberService.memberDetail(memberId);
		   model.addAttribute(dto);
		   return "/member/myInfoDetail";  
	   }
	
	@RequestMapping("/member/myInfoModifyForm")
	   public String myInfoForm(HttpSession session, Model model) {
//		   String memberId = (String)session.getAttribute("memberId");
//		   Member dto = memberService.memberDetail(memberId);
//		   model.addAttribute(dto);
		
		model.addAttribute("dto", memberService.memberDetail((String)session.getAttribute("memberId")));
		
		   return "/member/myInfoModifyForm";  
	   }
	
	 @RequestMapping(value="/myInfoUpdate", method= RequestMethod.POST)
	   public String myInfoUpdate(HttpSession session,Member dto, Model model) {
//		   String memberId = (String)session.getAttribute("memberId");
		   memberService.updateMember(dto);
		   
//		   if(result == 1) {
//			   model.addAttribute("message", "[내정보변경 성공] ");
//
//			   return "redirect:/member/myInfoForm";
//			   
//		   }else {
//			   model.addAttribute("message", "[내정보변경 실패] ");
			   return "/main";
//		   }
	   }
	 
	 @RequestMapping("/member/myPage")
	   public String myPage(HttpSession session, Model model) {
		 
		 // 세션에서 아이디 받기
		 String memberId = (String)session.getAttribute("memberId");
		 model.addAttribute("sessionId", memberId);
		 
		 // 내가 쓴 리뷰 갯수
		 int reviewNum = reviewBoardService.myReviewCnt(memberId);
		 model.addAttribute("reviewNum", reviewNum);
		 
		 // 내가 쓴 동행글 갯수
		 int communityNum = communityBoardService.myCommunityCnt(memberId);
		 model.addAttribute("communityNum", communityNum);
		 
		 
		 return "/member/myPage";  
	   }
	
}
