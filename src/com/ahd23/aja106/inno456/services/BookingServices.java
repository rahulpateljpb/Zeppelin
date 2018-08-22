package com.ahd23.aja106.inno456.services;

import java.util.ArrayList;
import java.util.HashMap;

import com.ahd23.aja106.inno456.bean.Ticket;
import com.ahd23.aja106.inno456.bean.TicketDetails;
import com.ahd23.aja106.inno456.dao.TicketDAO;
import com.ahd23.aja106.inno456.util.Utility;

public class BookingServices {
	public HashMap<Ticket, ArrayList<TicketDetails>> oneWayBooking(Ticket ticket,ArrayList<TicketDetails> ticketDetails ){
		
		TicketDAO ticketDAO=new TicketDAO();
		int totalBookedSeat=ticketDAO.totalBookedSeat(ticket);
		System.out.println("totalBookedSeat:"+totalBookedSeat);
		
		if(totalBookedSeat+ticketDetails.size()<=Utility.MAX_SEAT_AVAILABLE){
			HashMap<Ticket, ArrayList<TicketDetails>> hashMap=new HashMap<>();
			ArrayList<TicketDetails> arrayList= ticketDetails;
			for(TicketDetails details:arrayList){
				details.setSeat_No(""+(++totalBookedSeat));
				details.setStatus(1);
			}
			ticketDAO.bookTicket(ticket, arrayList);
			hashMap.put(ticket, arrayList);
			return hashMap;
		}else{
			return null;
		}
		
	}
}
