package com.ahd23.aja106.inno456.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.ahd23.aja106.inno456.services.SearchFlightHome;
import com.ahd23.aja106.inno456.util.Utility;

/**
 * Servlet implementation class RoundTrip
 */
public class RoundTrip extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoundTrip() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String source,destination,classType,date,return_date;
		RequestDispatcher rdRegister=null;
		String param=request.getParameter("hiddenAction"); 
		if(param.equals("home_search")){
			source=request.getParameter("source");
			
			destination=request.getParameter("destination");
			classType=request.getParameter("cabinType");
			date=request.getParameter("journeyDate");
			return_date=request.getParameter("returnDate");
			SearchFlightHome flightHome=new SearchFlightHome();
			String[] jsonStrings=flightHome.sourceToDestination(source, destination, date, classType, "oneWay", "monthLow",getServletContext());
			if(jsonStrings!=null){
				System.out.println("jsonResponse:"+jsonStrings[0]);
				System.out.println("price:"+jsonStrings[1]);
				request.setAttribute("Home_Result1", jsonStrings[0]);
				request.setAttribute("minPrice", jsonStrings[1]);
				rdRegister=request.getRequestDispatcher("Home_Result_Round_1.jsp");
				rdRegister.forward(request, response);
			}
			else{
				System.out.println("not found");
			}
		}else if(param.equals("Home_Result_Round_1")){
			HttpSession httpSession=request.getSession();
			source=httpSession.getAttribute(Utility.BOOKING_SOURCE).toString();
			destination=httpSession.getAttribute(Utility.BOOKING_DESTINATION).toString();
			classType=httpSession.getAttribute(Utility.BOOKING_CABIN).toString();
			//date=httpSession.getAttribute(Utility.BOOKING_RETURN_DATE).toString();
			return_date=httpSession.getAttribute(Utility.BOOKING_SOURCE).toString();
			SearchFlightHome flightHome=new SearchFlightHome();
			String[] jsonStrings=flightHome.sourceToDestination(source, destination, return_date, classType, "oneWay", "monthLow",getServletContext());
			if(jsonStrings!=null){
				System.out.println("jsonResponse:"+jsonStrings[0]);
				System.out.println("price:"+jsonStrings[1]);
				request.setAttribute("Home_Result1", jsonStrings[0]);
				request.setAttribute("minPrice", jsonStrings[1]);
				rdRegister=request.getRequestDispatcher("Home_Result_Round_2.jsp");
				rdRegister.forward(request, response);
			}
			else{
				System.out.println("not found");
			}
		}else if(param.equals("")){
			
		}
	}

}
