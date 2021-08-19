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
public class Train {
	private String adultCharge;
	private String arrPlaceName;
	private String arrPlandTime;
	private String depPlaceName;
	private String depPlandTime;
	private String traingGradeName;
	private String TrainNo;
	private int arrNum;
	private int depNum;
	
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

	private String hotelScore;
	private String arrNm;
	private String arrNm2;
	
	
	
}
