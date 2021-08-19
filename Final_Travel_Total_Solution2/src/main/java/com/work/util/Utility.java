package com.work.util;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.Locale;

public class Utility {
	public static String getCurrentDate() {
		LocalDate todaysDate = LocalDate.now();
		return String.format("%1$tY-%1$tm-%1$td" , todaysDate);
	}
	
	public static String getCurrentTime() {
		SimpleDateFormat formatter = new SimpleDateFormat ( "yyyy.MM.dd HH:mm:ss", Locale.KOREA );
		Date currentTime = new Date ( );
		String dTime = formatter.format ( currentTime );
		System.out.println ( dTime );
		return dTime;
	}
	
}
