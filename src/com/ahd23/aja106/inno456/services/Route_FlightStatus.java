package com.ahd23.aja106.inno456.services;

import com.ahd23.aja106.inno456.dao.SearchRoute;

public class Route_FlightStatus {
	public String searchArrivalRoute(String departureLocation,String arrivalLocation,String scheduledDepartureDate){
		departureLocation=departureLocation.substring(departureLocation.length()-4, departureLocation.length()-1);
		arrivalLocation=arrivalLocation.substring(arrivalLocation.length()-4, arrivalLocation.length()-1);
		return new SearchRoute().SearchArrivalByRoute(departureLocation, arrivalLocation, scheduledDepartureDate);
	}
	public String searchDeptRoute(String departureLocation,String arrivalLocation,String scheduledDepartureDate){
		departureLocation=departureLocation.substring(departureLocation.length()-4, departureLocation.length()-1);
		arrivalLocation=arrivalLocation.substring(arrivalLocation.length()-4, arrivalLocation.length()-1);
		return new SearchRoute().SearchDeparturesByRoute(departureLocation, arrivalLocation, scheduledDepartureDate);
	}
}
