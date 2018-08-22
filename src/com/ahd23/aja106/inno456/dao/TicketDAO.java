package com.ahd23.aja106.inno456.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ahd23.aja106.inno456.bean.Ticket;
import com.ahd23.aja106.inno456.bean.TicketDetails;

public class TicketDAO {
	public int totalBookedSeat(Ticket ticket){
		Connection con=null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		DBConnection connection=new DBConnection();
		try {
			con=connection.getConnection();
	
			preparedStatement=con.prepareStatement("select count(*) from ZEPPLINE_TICKETDETAILS,ZEPPLINE_TICKET "+ 
	" where ZEPPLINE_TICKETDETAILS.TICKET_ID=ZEPPLINE_TICKET.TICKET_ID and flightNo=? and JOURNEY_DATE=?");
			preparedStatement.setString(1, ticket.getFlight_No()+"");
			preparedStatement.setString(2, ticket.getJourney_Date());
			resultSet=preparedStatement.executeQuery();
			if(resultSet!=null){
				if(resultSet.next()){
					return resultSet.getInt(1);
				}
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				resultSet=connection.closeResultSet(resultSet);
				preparedStatement=connection.closePreparedStatement(preparedStatement);
				con=connection.closeConnection(con);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 0;	
	}
	
	public void bookTicket(Ticket ticket, ArrayList<TicketDetails> arrayList){
		Connection con=null;
		PreparedStatement preparedStatement=null;
		DBConnection connection=new DBConnection();
		try {
			con=connection.getConnection();
	
			preparedStatement=con.prepareStatement("insert into ZEPPLINE_TICKET values (lpad(ZEPPLINE_TICKET_SEQ.nextval,10,'ZP#0000000'),?,?,?,?,?,?,?,?)");
			//preparedStatement.setString(1, ticket.getTicket_Id());
			preparedStatement.setString(1, ""+ticket.getStatus());
			preparedStatement.setString(2, ticket.getJourney_Date());
			preparedStatement.setString(3, ticket.getBooking_Date());
			preparedStatement.setString(4, ""+ticket.getFlight_No());
			preparedStatement.setString(5, ""+ticket.getPrice());
			preparedStatement.setString(6, ""+ticket.getClient_Id());
			preparedStatement.setString(7, ""+ticket.getSource());
			preparedStatement.setString(8, ""+ticket.getDestination());
			preparedStatement.execute();
			preparedStatement=con.prepareStatement("insert into ZEPPLINE_TICKETDETAILS values (lpad(ZEPPLINE_TICKETDETAILS_SEQ.nextval,10,'TDID00000'),?,?,?,?,lpad(ZEPPLINE_TICKET_SEQ.currval,10,'ZP#0000000'))");
			for(TicketDetails details: arrayList){
				preparedStatement.setString(1, ""+details.getStatus());
				preparedStatement.setString(2, details.getPassanger_Name());
				preparedStatement.setString(3, ""+details.getPassanger_Age());
				preparedStatement.setString(4, ""+details.getSeat_No());
				preparedStatement.execute();
				preparedStatement.clearParameters();
			}
			con.commit();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				
				preparedStatement=connection.closePreparedStatement(preparedStatement);
				con=connection.closeConnection(con);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
