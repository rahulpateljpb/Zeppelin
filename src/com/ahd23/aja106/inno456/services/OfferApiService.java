package com.ahd23.aja106.inno456.services;

import com.ahd23.aja106.inno456.dao.OffersApi;

public class OfferApiService {
	public String callOferApi(String departureCity,String arrivalCity,String cabin,String journeyType,
			String range){
		departureCity=departureCity.substring(departureCity.length()-4, departureCity.length()-1);
		arrivalCity=arrivalCity.substring(arrivalCity.length()-4, arrivalCity.length()-1);
		return new OffersApi().offers(departureCity, arrivalCity, cabin, journeyType, range);
	}
}
