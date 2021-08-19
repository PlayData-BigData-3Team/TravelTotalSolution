package com.work.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.work.dto.Air;
import com.work.dto.Bus;
import com.work.dto.CommunityBoard;
import com.work.dto.Member;
import com.work.dto.Train;
import com.work.util.Criteria;

@Mapper
public interface TransportDao {


	/** 버스리스트 조회 */
	public List<Bus> selectBusList();
	  
	/** 랜덤 리스트 조회 */
	public List<Bus> randomBusList();
	
	/** 버스 조회 */
	public List<Bus> selectBusListByCondition(String keyword, String nc_select, String amount);
	
	/** 기차 조회 */
	public List<Train> selectTrainListByCondition(String keyword, String nc_select, String amount);
	
	/** 항공 조회 */
	public List<Air> selectAirListByCondition(String keyword, String nc_select, String amount);

	/** 다중조건 조회 : 다중 아이디 조회: ArrayList */
	public List<Bus> selectBusListByConditionToList(String condition, List<String> memberIdList);
	  
}
