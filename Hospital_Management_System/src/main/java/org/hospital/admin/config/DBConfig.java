package org.hospital.admin.config;


import java.sql.*;

public class DBConfig 
{

	protected PreparedStatement psmt;
	protected Connection conn;
	protected ResultSet rs;
	
	public DBConfig()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalproject","root","swapnil");
		}
		catch(Exception ex)
		{
			
		}
	}
}
