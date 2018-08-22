package com.ahd23.aja106.inno456.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ahd23.aja106.inno456.bean.Ticket;
import com.ahd23.aja106.inno456.bean.TicketDetails;
import com.ahd23.aja106.inno456.bean.Users;
import com.ahd23.aja106.inno456.services.BookingServices;
import com.ahd23.aja106.inno456.util.Utility;
import com.sun.corba.se.impl.javax.rmi.CORBA.Util;

/**
 * Servlet implementation class TicketBooking
 */
public class TicketBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TicketBooking() {
		super();
		// TODO Auto-generated constructor stub
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in dopost");
		String param=request.getParameter("ticketAction");
		if(param.equals("confirm")){
			int noOfpassanger=Integer.parseInt(request.getParameter("NoOfPassangers"));
			for(int i=1;i<=noOfpassanger;i++){
				System.out.println(request.getParameter("name"+i));
				System.out.println(request.getParameter("age"+i));
			}
			
			ArrayList<TicketDetails> list=new ArrayList<>();
			for(int i=0;i<noOfpassanger;i++){
				TicketDetails details=new TicketDetails();
				details.setPassanger_Name(request.getParameter("name"+(i+1)));
				details.setPassanger_Age(Integer.parseInt(request.getParameter("age"+(i+1))));
				list.add(details);
			}
			
			HttpSession session=request.getSession();
			Users users=new Users();
			users=(Users)session.getAttribute("UserDetail");
			Ticket ticket=new Ticket();
			ticket.setSource(session.getAttribute(Utility.BOOKING_SOURCE).toString());
			ticket.setDestination(session.getAttribute(Utility.BOOKING_DESTINATION).toString());
			ticket.setUser_Id(users.getUserId());
			ticket.setFlight_No(Integer.parseInt(session.getAttribute(Utility.BOOKING_FLIGHT_NO_J).toString()));
			ticket.setJourney_Date(session.getAttribute(Utility.BOOKING_JOURNY_DATE).toString());
			
			ticket.setPrice(Double.parseDouble(session.getAttribute(Utility.BOOKING_PRICE).toString()));
			ticket.setBooking_Date(new Date().toString());
			
			HashMap<Ticket, ArrayList<TicketDetails>> map=new BookingServices().oneWayBooking(ticket,list);
			RequestDispatcher dispatcher;
			if(map==null){
				request.setAttribute("successful", "false");
				dispatcher=request.getRequestDispatcher("Booking_successful.jsp");
			}else{
				request.setAttribute("successful", "true");
				for(Entry<Ticket, ArrayList<TicketDetails>> entry: map.entrySet()){
					request.setAttribute("ticket", entry.getKey());
					request.setAttribute("ticketDetails", entry.getValue());
					break;
				}
				dispatcher=request.getRequestDispatcher("Booking_successful.jsp");
			}
			dispatcher.forward(request, response);
			
		}else if(param.equals("home_result1")){
			HttpSession session=request.getSession();
			 Users loggedIn=((Users)session.getAttribute("UserDetail"));
			 System.out.println("flightNo:"+request.getParameter("flightNo"));
			 System.out.println("price:"+request.getParameter("price"));
			 
			 session.setAttribute(Utility.BOOKING_FLIGHT_NO_J, request.getParameter("flightNo"));
			 session.setAttribute(Utility.BOOKING_PRICE, request.getParameter("price"));
			
			 RequestDispatcher action=null;
			if(loggedIn!=null){
				
				action=request.getRequestDispatcher("BookingPage.jsp");
				
			}else{
				session.setAttribute("booking_oneWay_clicked","true");
				action=request.getRequestDispatcher("Login.jsp");
			}
			action.forward(request, response);
		}
	}
	
}
