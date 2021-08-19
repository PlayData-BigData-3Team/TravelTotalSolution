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
public class Bus {
	private String arrPlaceNm;
	private String arrPlandTime;
	private String charge;
	private String depPlaceNm;
	private String depPlandTime;
	private String gradeNm;
	private String routeId;
	private int arrNum;
	
	private String dep;
	private String region;
	private String depCharge;
	private String imgLink;
	private String hotelLink;
	private String hotel;
	private String hotelprice;
	private String dep2;
	private String depCharge2;
	private String totalprice;
	
	
}
