package com.ahd23.aja106.inno456.services;

import com.ahd23.aja106.inno456.dao.SearchTodays;
import com.ahd23.aja106.inno456.util.Utility;

public class TodaysSchedule {
	public String todaySchduleArrival(String arrivalLocation,String startTime,String endTime){
		arrivalLocation=arrivalLocation.substring(arrivalLocation.length()-4, arrivalLocation.length()-1);
		//startTime=Utility.timeConversion(startTime);
		//endTime=Utility.timeConversion(endTime);
		return new SearchTodays().searchTodaysArrivalByTime(arrivalLocation, startTime, endTime);
	}
	
	public String todaySchduleDeparture(String departureLocation,String startTime,String endTime){
		departureLocation=departureLocation.substring(departureLocation.length()-4, departureLocation.length()-1);
		//startTime=Utility.timeConversion(startTime);
		//endTime=Utility.timeConversion(endTime);
		return new SearchTodays().searchTodaysDeparturesByTime(departureLocation, startTime, endTime);
	}
}
