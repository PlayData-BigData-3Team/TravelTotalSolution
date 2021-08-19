package com.work.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.work.dao.TransportDao;
import com.work.dto.Air;
import com.work.dto.Bus;
import com.work.dto.Member;
import com.work.dto.Train;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class TransportService {
	@Autowired
	private TransportDao TransportDao;



	
	/** 버스 리스트 */
	public List<Bus> selectBusList() {
		return TransportDao.selectBusList();
	}
	/** 동행 리스트 */
	public List<Bus> randomBusList() {
		return TransportDao.randomBusList();
	}
	
	/** 버스 조회 */
	public List<Bus> busListByCondition(String keyword, String nc_select, String amount) {
		return TransportDao.selectBusListByCondition(keyword, nc_select, amount);
	}
	/** 기차 조회 */
	public List<Train> trainListByCondition(String keyword, String nc_select, String amount) {
		return TransportDao.selectTrainListByCondition(keyword, nc_select, amount);
	}
	/** 항공 조회 */
	public List<Air> airListByCondition(String keyword, String nc_select, String amount) {
		return TransportDao.selectAirListByCondition(keyword, nc_select, amount);
	}


	/** 다중조건 조회 : 다중 아이디 조회 ArrayList */
	public List<Bus> busListByConditionToList(String condition, List<String> memberIdList) {
		return TransportDao.selectBusListByConditionToList(condition, memberIdList);
	}
	
	
}


