package com.ahd23.aja106.inno456.dao;


public class SearchRoute {
	public String SearchDeparturesByRoute(String departureLocation,String arrivalLocation,String scheduledDepartureDate){
		String url="http://apphonics.tcs.com/public/ba/flightinfo/1.0/flights;" +
				"departureLocation="+departureLocation+";arrivalLocation="+arrivalLocation+";" +
				"scheduledDepartureDate="+scheduledDepartureDate+".json";
		CallApi api=new CallApi();
		String json=api.ApiRequest(url);
		return json;
	}
	public String SearchArrivalByRoute(String departureLocation,String arrivalLocation,String scheduledDepartureDate){
		String url="http://apphonics.tcs.com/public/ba/flightinfo/1.0/flights;" +
				"departureLocation="+departureLocation+";arrivalLocation="+arrivalLocation+";" +
				"scheduledDepartureDate="+scheduledDepartureDate+".json";
		CallApi api=new CallApi();
		String json=api.ApiRequest(url);
		return json;
	}
}
