package com.work.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.dto.Air;
import com.work.dto.Bus;
import com.work.dto.Train;
import com.work.service.TransportService;
import com.work.util.Criteria;
import com.work.util.Paging;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class transportController {
   
   @Autowired
   public TransportService TransportService;
   
   
   //게시판 목록
   @RequestMapping("/transport/busList")
   public String selectBusList(Criteria cri, Model model, HttpSession session) throws Exception {
      
      // 전체 글 개수
//        int boardListCnt = BusService.selectBusCnt();
        
        // 페이징 객체
        Paging paging = new Paging();
        paging.setCri(cri);

      
//      List<CommunityBoard> list = CommunityBoardService.selectCommunityList();
      List<Bus> list = TransportService.selectBusList();

      
      model.addAttribute("list", list);
      model.addAttribute("paging", paging);    
      
      return "bus/busList";
   }
   
   @RequestMapping("/transport/map")
   public String randomBusList(Criteria cri, Model model, HttpSession session) throws Exception {
      
      // 전체 글 개수
//        int boardListCnt = BusService.selectBusCnt();
        
        // 페이징 객체
        Paging paging = new Paging();
        paging.setCri(cri);

      
//      List<Bus> list = BusService.randomBusList();

      
//      model.addAttribute("list", list);
      model.addAttribute("paging", paging);    
      
      return "transport/map";
   }
   @RequestMapping("/transport/multipleCondition")
   public String multipleCondition(String keyword, String nc_select, String amount, Model model) {
      List<Bus> busList = null;      
      List<Train> trainList = null;      
      List<Air> airList = null;      
      
      
      busList = TransportService.busListByCondition(keyword, nc_select, amount);
      trainList = TransportService.trainListByCondition(keyword, nc_select, amount);
      airList = TransportService.airListByCondition(keyword, nc_select, amount);
      
      
      if (busList.isEmpty()) {
         model.addAttribute("message1", "검색 조건에 해당하는 데이터가 없습니다.");
      }
      if (trainList.isEmpty()) {
         model.addAttribute("message2", "검색 조건에 해당하는 데이터가 없습니다.");
      }
      if (airList.isEmpty()) {
         model.addAttribute("message3", "검색 조건에 해당하는 데이터가 없습니다.");
      }
      model.addAttribute("busList", busList);
      model.addAttribute("trainList", trainList);
      model.addAttribute("airList", airList);
      
      
      
      return "transport/map";
      
      }




   

        
        

   

   

}