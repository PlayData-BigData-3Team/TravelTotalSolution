package com.work.controller;

import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.work.api.KakaoAPI;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {

	@RequestMapping("/")
	public String home(HttpServletRequest request) {
		ServletContext application = request.getServletContext();
		String path = application.getContextPath();
		application.setAttribute("path", path);
		log.info("### context path: " + path);
		return "main";
	}

	@Autowired
	private KakaoAPI kakao;

	@RequestMapping(value = "/login")
	public String login(@RequestParam("code") String code, HttpSession session) {
		String access_Token = kakao.getAccessToken(code);
		HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
		System.out.println("login Controller : " + userInfo);

		// 클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
		if (userInfo.get("email") != null) {
			session.setAttribute("userId", userInfo.get("email"));
			session.setAttribute("access_Token", access_Token);
		}
		return "main";
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		kakao.kakaoLogout((String) session.getAttribute("access_Token"));
		session.removeAttribute("access_Token");
		session.removeAttribute("userId");
		return "main";
	}

//	@RequestMapping("member/myPage")
//	public String myPage(HttpServletRequest request) {
//
//		return "member/myPage";
//	}
//	
	@RequestMapping("/test")
	public String test(HttpServletRequest request) {

		return "test";
	}

}
