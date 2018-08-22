package com.ahd23.aja106.inno456.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ahd23.aja106.inno456.bean.Feedback;
import com.ahd23.aja106.inno456.bean.Users;
import com.ahd23.aja106.inno456.dao.SearchFlightStatus;
import com.ahd23.aja106.inno456.services.FeedbackService;
import com.ahd23.aja106.inno456.services.OfferApiService;
import com.ahd23.aja106.inno456.services.Route_FlightStatus;
import com.ahd23.aja106.inno456.services.SearchFlightHome;
import com.ahd23.aja106.inno456.services.TodaysSchedule;
import com.ahd23.aja106.inno456.services.ValidateUser;
import com.ahd23.aja106.inno456.util.Utility;


public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String jsonResponse;
	String emailId="";
	String password="";
	Users users=null;
	Users Loginusers=null;
	HttpSession session=null;
	String flightNumber="";
	String scheduledDepartureDate=null;
	String scheduledArrivalDate=null;
	String departureCity=null;
	String arrivalCity=null;
	String cabin=null;
	String journeyType=null;
	String range=null;
	String departureLocation=null;
	String arrivalLocation=null;
	String startTime=null;
	String endTime=null;
	String firstName=null;
	String LastName=null;
	String address=null;
	String state=null;
	int mobileno=0;
	String gender=null;
	String dob=null;
	boolean userRegisterFlag=false;
	String source=null;
	String destination=null;
	String classType=null;
	String date=null;
	String journyType=null;
	RequestDispatcher rdRegister=null;
	boolean feedbackGiven=false;
	Feedback feedback=null;


	public MainServlet() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("inPost");
		String param=request.getParameter("hiddenAction");
	
		System.out.println(param);
		switch(param){
		case "home_search":
			source=request.getParameter("source");
			destination=request.getParameter("destination");
			classType=request.getParameter("cabinType");
			date=request.getParameter("journeyDate");
			SearchFlightHome flightHome=new SearchFlightHome();
			String[] jsonStrings=flightHome.sourceToDestination(source, destination, date, classType, "oneWay", "monthLow",getServletContext());
			if(jsonStrings!=null){
				System.out.println("jsonResponse:"+jsonStrings[0]);
				System.out.println("price:"+jsonStrings[1]);
				request.setAttribute("Home_Result1", jsonStrings[0]);
				request.setAttribute("minPrice", jsonStrings[1]);
				rdRegister=request.getRequestDispatcher("Home_Result1.jsp");
				rdRegister.forward(request, response);
			}
			else{
				System.out.println("not found");
			}

			break;
		case "login":
			emailId=request.getParameter("UserId");
			password=request.getParameter("Password");
			System.out.println(emailId);
			System.out.println(password);
			users=new Users();
			users=new ValidateUser().logIn(emailId,  password);
			
			if(users!=null){
				System.out.println("user exist!!!");
				session=request.getSession();
				session.setAttribute("login", "true");
				session.setAttribute("UserDetail",users);
				System.out.println(session.getAttribute("booking_oneWay_clicked"));
				if(session.getAttribute("booking_oneWay_clicked")!=null){
					if(session.getAttribute("booking_oneWay_clicked").equals("true")){
						/*session.setAttribute(Utility.BOOKING_FLIGHT_NO_J, request.getParameter("flightNo"));
						session.setAttribute(Utility.BOOKING_PRICE, request.getParameter("price"));*/
						rdRegister=request.getRequestDispatcher("booking.jsp");
					}
					else
					rdRegister=request.getRequestDispatcher("DashBoard.jsp");
				}else
					rdRegister=request.getRequestDispatcher("DashBoard.jsp");
			}
			else{
				System.out.println("user not exist!!!");
				//session=request.getSession();
				//session.setAttribute("login", "false");
				request.setAttribute("LoginFailed", "Please enter correct Email Id / Password");
				//session.setAttribute("UserDetail",null);
				rdRegister=request.getRequestDispatcher("Login.jsp");
			}
			rdRegister.forward(request, response);
			break;
		case "register":
			
			Users registerUser=new Users();
			registerUser.setEmailId(request.getParameter("Email"));
			registerUser.setPassword(request.getParameter("password"));
			registerUser.setFirstName(request.getParameter("FName"));
			registerUser.setLastName(request.getParameter("LName"));
			registerUser.setMobileNo(request.getParameter("mob"));
			registerUser.setAddress(request.getParameter("address"));
			registerUser.setCountry(request.getParameter("cntry"));
			registerUser.setGender(request.getParameter("gender"));
			//registerUser.setDOB(request.getParameter(""));
			System.out.println("main");
			userRegisterFlag=new ValidateUser().registerUser(registerUser);
			if(userRegisterFlag){
				session=request.getSession();
				session.setAttribute("login", "True");
				session.setAttribute("UserDetail",registerUser);
				request.setAttribute("UserDetail", registerUser);
				rdRegister=request.getRequestDispatcher("Login.jsp");
				rdRegister.forward(request, response);
			}
			else{
				System.out.println("exist");
				/*JOptionPane.showMessageDialog(null, "You Are Already Registerd");*/
				
				request.setAttribute("user", "You Are Already Registerd");
				rdRegister=request.getRequestDispatcher("Register.jsp");
				rdRegister.forward(request, response);
				
				/*request.setAttribute("message", "Already Registerd");
				rdRegister.forward(request, response);*/
			}
			break;
		case "SearchFlightStatus":
			flightNumber=request.getParameter("flightNo");
			if(request.getParameter("arrDep").equalsIgnoreCase("Arrival")){
				scheduledArrivalDate=request.getParameter("scheduledDepartureDate");
				System.out.println("flightNumber:"+flightNumber+" scheduledArrivalDate:"+scheduledArrivalDate);
				jsonResponse=new SearchFlightStatus().searchArrivalsByFlight(flightNumber, scheduledArrivalDate);
				System.out.println(jsonResponse.length());

				
			}
			else
			{
				scheduledDepartureDate=request.getParameter("scheduledDepartureDate");
				System.out.println("flightNumber:"+flightNumber+" scheduledDepartureDate:"+scheduledDepartureDate);
				jsonResponse=new SearchFlightStatus().searchDeparturesByFlight(flightNumber, scheduledDepartureDate);
			}
			

			if(jsonResponse.length()>50 )

			{System.out.println(jsonResponse.length());
			request.setAttribute("FlightStatusReport", "jsonResponse");
				rdRegister=request.getRequestDispatcher("FlightStatusReport.jsp");
				rdRegister.forward(request, response);
				//response.sendRedirect("/error.jsp"); break;

			}
			
			else if(jsonResponse.length()<1)
			{System.out.println(jsonResponse.length());
				request.setAttribute("user", "error");
			rdRegister=request.getRequestDispatcher("Status.jsp");
			rdRegister.forward(request, response);
			break;
			}
			else if(jsonResponse.length()==35 )
			{System.out.println(jsonResponse.length());
				request.setAttribute("user", "date");
			rdRegister=request.getRequestDispatcher("Status.jsp");
			rdRegister.forward(request, response);
			break;
			}
			
		case "OffersApi":
			departureCity=request.getParameter("DepartureCity");
			arrivalCity=request.getParameter("ArrivalCity");
			cabin=request.getParameter("Cabin");
			journeyType=request.getParameter("JourneyType");
			range=request.getParameter("Range");
			jsonResponse=new OfferApiService().callOferApi(departureCity, arrivalCity, cabin, journeyType, range);
			System.out.println(jsonResponse.length());
			if(jsonResponse.length()==0 )
			{System.out.println(jsonResponse.length());
				request.setAttribute("user", "error");
			rdRegister=request.getRequestDispatcher("offerHome.jsp");
			rdRegister.forward(request, response);
			break;
			}else
			System.out.println(jsonResponse);
			request.setAttribute("OfferResult", jsonResponse);
			rdRegister=request.getRequestDispatcher("OfferResult.jsp");
			rdRegister.forward(request, response);
			break;
		case "SearchRoute":
			departureLocation=request.getParameter("route_source");
			arrivalLocation =request.getParameter("route_destination");
			scheduledDepartureDate=request.getParameter("date");
			System.out.println("departureLocation:"+departureLocation);
			System.out.println("arrivalLocation:"+arrivalLocation);
			System.out.println("scheduledDepartureDate:"+scheduledDepartureDate);
			if(request.getParameter("displayOrder").equalsIgnoreCase("SearchArrivalByRoute"))
				jsonResponse=new Route_FlightStatus().searchArrivalRoute(departureLocation, arrivalLocation, scheduledDepartureDate);
			
			
			else
				jsonResponse=new Route_FlightStatus().searchDeptRoute(departureLocation, arrivalLocation, scheduledDepartureDate);
			System.out.println(jsonResponse.length());
			if(jsonResponse.length()>50 )
			{	request.setAttribute("searchRouteResult", jsonResponse);
			rdRegister=request.getRequestDispatcher("table_route_flightNo.jsp");
			rdRegister.forward(request, response);
			break;}
			else if(jsonResponse.length()<1 )
			{System.out.println(jsonResponse.length());
				request.setAttribute("user", "flight not found");
			rdRegister=request.getRequestDispatcher("Status.jsp");
			rdRegister.forward(request, response);
			break;
			}
			
			else if(jsonResponse.length()==35 ){
				
				request.setAttribute("user", "date");
				rdRegister=request.getRequestDispatcher("Status.jsp");
				rdRegister.forward(request, response);
				break;
				}
			
		case "SearchTodays":
			startTime=request.getParameter("startTime");
			endTime=request.getParameter("endTime");
			if(request.getParameter("searchTodays").equalsIgnoreCase("searchTodaysArrivalByTime")){
				arrivalLocation=request.getParameter("location");
				jsonResponse=new TodaysSchedule().todaySchduleArrival(arrivalLocation, startTime, endTime);
				System.out.println(jsonResponse.length());
				
				if(jsonResponse.length()==41 )
				{System.out.println(jsonResponse.length());
					request.setAttribute("user", "time");
				rdRegister=request.getRequestDispatcher("Today's_Schedule_By_Time.jsp");
				rdRegister.forward(request, response);
				break;
				}
				else if(jsonResponse.length()<1 )
				{System.out.println(jsonResponse.length());
				request.setAttribute("user", "null");
			rdRegister=request.getRequestDispatcher("Today's_Schedule_By_Time.jsp");
			rdRegister.forward(request, response);
			break;
			}else
				request.setAttribute("Locations", arrivalLocation);
				
			}
			else{
				departureLocation=request.getParameter("location");
				System.out.println(departureLocation);
				jsonResponse=new TodaysSchedule().todaySchduleDeparture(departureLocation, startTime, endTime);
				if(jsonResponse.length()==41 )
				{System.out.println(jsonResponse.length());
					request.setAttribute("user", "time");
				rdRegister=request.getRequestDispatcher("Today's_Schedule_By_Time.jsp");
				rdRegister.forward(request, response);
				break;
				}
				else if(jsonResponse.length()<1 )
				{System.out.println(jsonResponse.length());
				request.setAttribute("user", "null");
			rdRegister=request.getRequestDispatcher("Today's_Schedule_By_Time.jsp");
			rdRegister.forward(request, response);
			break;
			}else
				request.setAttribute("Locations", departureLocation);
				
			}
			
			request.setAttribute("SearchTodaysReport", jsonResponse);
			rdRegister=request.getRequestDispatcher("Todays_Schedule_Result.jsp");
			rdRegister.forward(request, response);
			break;
		case "Ticketbooking":
			session=request.getSession();
			Users users=(Users)session.getAttribute("UserDetail");
			if(users!=null){
				
			}else{
				
			}
			break;
		case "HotelBooking":
			break;
		case "CarRent":
			break;
		case "TicketHotel":
			break;
		case "TicketCarRent":
			break;
		case "TicketHotelCar":
			break;
		case "feedback":
			System.out.println("feedback");
			feedback=new Feedback();
			session=request.getSession();
			Users use=(Users)session.getAttribute("UserDetail");
			feedback.setUserID(Integer.parseInt(use.getUserId()));
			feedback.setcABINSTAFFSERVICE(Integer.parseInt(request.getParameter("starCabin")));
			feedback.setcOMMENTS(request.getParameter("comments"));
			feedback.setfOODANDBEVERAGES(Integer.parseInt(request.getParameter("starFood")));
			feedback.setgROUNDSERVICES(Integer.parseInt(request.getParameter("starGround")));
			feedback.setiNFLIGHTENT(Integer.parseInt(request.getParameter("starInflight")));
			feedback.setsEATCOMFORT(Integer.parseInt(request.getParameter("starComfort")));
			feedbackGiven=new FeedbackService().feedbackRegister(feedback);
			request.setAttribute("feedback", feedbackGiven);
			if(feedbackGiven)
			{
				System.out.println("feedback given ");
				request.setAttribute("CheckFeedback", "feedbckGiven");
			rdRegister=request.getRequestDispatcher("Home.jsp");
			rdRegister.forward(request, response);
			}
			else
			{
				System.out.println("feedback not given");
				rdRegister=request.getRequestDispatcher("feedback.jsp");
				rdRegister.forward(request, response);
			}
			break;
		
				
		case "logout":
				System.out.println("logout");
				session=request.getSession();
				session.setAttribute("login", "false");
				session.setAttribute("UserDetail","");
				session.invalidate();
				rdRegister=request.getRequestDispatcher("LogOut.jsp");
				rdRegister.forward(request, response);
			break;
		default:

		}
	}

}
