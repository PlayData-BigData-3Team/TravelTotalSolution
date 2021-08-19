package com.work.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class RecommandController {
	
	/**
	  * 추천 페이지
	  * @return
	  * @throws Exception
	  */
	 @RequestMapping(value="recommand/recommand")
	    public String recommand() throws Exception {
	     return "recommand/recommand";
	    }
	 
	 /**
	  * 결제
	  * @return
	  * @throws Exception
	  */
	 @RequestMapping(value="/recommand/payment")
	    public String payment() throws Exception {
		  
	     return "/recommand/payment";
	    }
}
