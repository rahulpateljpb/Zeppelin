package com.ahd23.aja106.inno456.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ahd23.aja106.inno456.util.Utility;

public class DBConnection {
	public Connection getConnection() throws ClassNotFoundException, SQLException{
		Class.forName(Utility.DRIVER_NAME);
		Connection con=DriverManager.getConnection(Utility.DB_URL,Utility.DB_USERNAME,Utility.DB_PASSWORD);
		return con;
	}
	public Connection closeConnection(Connection con) throws SQLException{
		if(con!=null){
			con.close();
			return con;
		}
		return con;
	}
	public PreparedStatement closePreparedStatement(PreparedStatement preparedStatement) throws SQLException{
		if(preparedStatement!=null){
			preparedStatement.close();
			return preparedStatement;
		}
		return preparedStatement;
	}
	public ResultSet closeResultSet(ResultSet resultSet) throws SQLException{
		if(resultSet!=null)
			resultSet.close();
		return resultSet;
	}
}
