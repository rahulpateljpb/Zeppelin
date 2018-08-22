package com.ahd23.aja106.inno456.dao;


public class SearchTodays {
	
	
	public String searchTodaysDeparturesByTime(String departureLocation,String startTime,String endTime){
		String url="http://apphonics.tcs.com/public/ba/flightinfo/1.0/flights;" +
				"departureLocation="+departureLocation+";startTime="+startTime+";endTime="+endTime+".json";
		CallApi api=new CallApi();
		String json=api.ApiRequest(url);
		return json;
	}
	public String searchTodaysArrivalByTime(String arrivalLocation,String startTime,String endTime){
		String url="http://apphonics.tcs.com/public/ba/flightinfo/1.0/flights;" +
				"departureLocation="+arrivalLocation+";startTime="+startTime+";endTime="+endTime+".json";
		CallApi api=new CallApi();
		String json=api.ApiRequest(url);
		return json;
	}
}
