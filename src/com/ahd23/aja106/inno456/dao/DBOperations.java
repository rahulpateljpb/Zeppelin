package com.ahd23.aja106.inno456.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.ahd23.aja106.inno456.bean.Feedback;
import com.ahd23.aja106.inno456.bean.Users;

public class DBOperations {
	public boolean createClient(Users client){
		Connection con=null;
		PreparedStatement preparedStatement=null;
		DBConnection connection=new DBConnection();
		try {
			System.out.println("db");
			con=connection.getConnection();
			preparedStatement=con.prepareStatement("insert into Zeppline_users (userId,emailId,password,firstName,lastName,address,country,gender,status,mobileNo) values (ZEPPLINE_USERS_SEQUENCE.nextval,?,?,?,?,?,?,?,?,?)");
			preparedStatement.setString(1, client.getEmailId());
			preparedStatement.setString(2, client.getPassword());
			preparedStatement.setString(3, client.getFirstName());
			preparedStatement.setString(4, client.getLastName());
			preparedStatement.setString(5, client.getAddress());
			preparedStatement.setString(6, client.getCountry());
			preparedStatement.setString(7, client.getGender());
			preparedStatement.setString(8, "1");
			preparedStatement.setString(9, client.getMobileNo());	
			//preparedStatement.setString(8, client.getDOB());
			preparedStatement.execute();
			con.commit();
			return true;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
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
		return false;
	}

	public boolean existCustomer(String emailId){
		Connection con=null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		DBConnection connection=new DBConnection();
		try {
			con=connection.getConnection();
	
			preparedStatement=con.prepareStatement("select * from ZEPPLINE_USERS where emailId=?");
			preparedStatement.setString(1, emailId);
			resultSet=preparedStatement.executeQuery();
			if(resultSet!=null){
				if(resultSet.next()){
					return true;
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
		return false;
	}
	public Users login(String emailId,String password){
		System.out.println("inside login");
		Connection con=null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		DBConnection connection=new DBConnection();
		try {
			con=connection.getConnection();
			preparedStatement=con.prepareStatement("select * from Zeppline_users where emailId=? and password=?");
			preparedStatement.setString(1, emailId);
			preparedStatement.setString(2, password);
			resultSet=preparedStatement.executeQuery();
			if(resultSet!=null){
				if(resultSet.next()){
					Users users=new Users();
					users.setUserId(resultSet.getString("userId"));
					users.setEmailId(resultSet.getString("emailId"));
					users.setFirstName(resultSet.getString("firstName"));
					users.setLastName(resultSet.getString("lastName"));
					users.setMobileNo(resultSet.getString("mobileNo"));
					users.setAddress(resultSet.getString("address"));
					users.setCountry(resultSet.getString("country"));
					users.setGender(resultSet.getString("gender"));
					users.setStatus(Integer.parseInt(resultSet.getString("status")));
					users.setImagePath(resultSet.getString("imagePath"));
					//users.setDOB(resultSet.getString("DOB"));
					System.out.println("userId"+users.getUserId());


					return users;
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
		return null;
	}
	public Users userDetails(String emailId){
		Connection con=null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		DBConnection connection=new DBConnection();
		try {
			con=connection.getConnection();
			preparedStatement=con.prepareStatement("select * from Zeppline_users where emailId=?");
			preparedStatement.setString(1, emailId);
			resultSet=preparedStatement.executeQuery();
			if(resultSet!=null){
				resultSet.next();
				Users users=new Users();
				users.setUserId(resultSet.getString("userId"));
				users.setEmailId(resultSet.getString("emailId"));
				users.setFirstName(resultSet.getString("firstName"));
				users.setLastName(resultSet.getString("lastName"));
				users.setMobileNo(resultSet.getString("mobileNo"));
				users.setAddress(resultSet.getString("address"));
				users.setCountry(resultSet.getString("country"));
				users.setGender(resultSet.getString("gender"));
				//users.setDOB(resultSet.getString("DOB"));
				users.setStatus(Integer.parseInt(resultSet.getString("status")));
				users.setImagePath(resultSet.getString("imagePath"));
				return users;
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
		return null;
	}
	public boolean addFeedback(Feedback feedback){
		Connection con=null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		DBConnection connection=new DBConnection();


		try {
			con=connection.getConnection();
			preparedStatement=con.prepareStatement("select * from Zeppline_feedback where UserID=?");
			preparedStatement.setString(1, ""+feedback.getUserID());
	//	resultSet=preparedStatement.executeQuery();
		/*if(resultSet!=null)
		{
				if(resultSet.next())
					return false;
			}
			else
			{*/
			preparedStatement=con.prepareStatement("insert into Zeppline_feedback values (Feedback_SEQ1.nextval,?,?,?,?,?,?,?)");
			preparedStatement.setInt(1, feedback.getsEATCOMFORT());
			System.out.println(feedback.getsEATCOMFORT());
			preparedStatement.setInt(2, feedback.getcABINSTAFFSERVICE());
			System.out.println(feedback.getcABINSTAFFSERVICE());
			preparedStatement.setInt(3, feedback.getfOODANDBEVERAGES());
			System.out.println(feedback.getfOODANDBEVERAGES());
			preparedStatement.setInt(4, feedback.getiNFLIGHTENT());
			System.out.println(feedback.getiNFLIGHTENT());
			preparedStatement.setInt(5, feedback.getgROUNDSERVICES());
			System.out.println(feedback.getgROUNDSERVICES());
			preparedStatement.setString(6,feedback.getcOMMENTS());
			System.out.println(feedback.getcOMMENTS());
			preparedStatement.setInt(7, feedback.getUserID());
			System.out.println(feedback.getUserID());
	
			preparedStatement.execute();
			
			return true;
			
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
				resultSet=connection.closeResultSet(resultSet);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}
	public boolean updateImage(Users user,String imagePath)
	{
		Connection con=null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		DBConnection connection=new DBConnection();
		try
		{
			con=connection.getConnection();
			preparedStatement=con.prepareStatement("Update Zeppline_Users set imagepath=? where UserID=?");
			preparedStatement.setString(1, imagePath);
			preparedStatement.setString(2, ""+user.getUserId());
			preparedStatement.executeUpdate();
			con.commit();
			return true;
		}	
		catch (ClassNotFoundException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
		finally
		{
			try 
			{
				preparedStatement=connection.closePreparedStatement(preparedStatement);
				con=connection.closeConnection(con);
				resultSet=connection.closeResultSet(resultSet);
			} catch (SQLException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}

}
