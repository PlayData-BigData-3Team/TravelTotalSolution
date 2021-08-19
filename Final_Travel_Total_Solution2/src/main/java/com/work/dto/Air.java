package com.work.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/** 
 * 리뷰 도메인 클래스 
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Air {
	private String air_name;
	private String price;
	private String dep;
	private String depTime;
	private String arr;
	private String arrTime;
	private String flight_time;
	private String air_date;
	private int arrNum;
	private int depNum;
	private String link;
	
	private String dep2;
	private String region;
	private String depCharge;
	private String imgLink;
	private String hotelLink;
	private String hotel;
	private String hotelprice;
	private String dep3;
	private String depCharge2;
	private String totalprice;
	
	
	
}
