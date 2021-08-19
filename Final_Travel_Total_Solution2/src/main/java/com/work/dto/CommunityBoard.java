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
public class CommunityBoard {
	private int postNo;
	private String memberId;
	private String title;
	private String contents;
	private String creationDate;
	private int views;
	private int boardLike;
	private String grade;
}
