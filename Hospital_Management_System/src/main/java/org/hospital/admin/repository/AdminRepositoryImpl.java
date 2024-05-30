package org.hospital.admin.repository;

import org.hospital.admin.config.DBConfig;

public class AdminRepositoryImpl extends DBConfig implements AdminRepository{

	@Override
	public String verifyStaff(String username, String password) {
				
		
		try 
		{
			psmt=conn.prepareStatement("select role from credentials where username='"+username+"' and password=username='"+username+"' ");
			rs=psmt.executeQuery();
			
			if(rs.next())
			{
				return rs.getString(1);
			}
			return null;
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);
			return null;
		}
	}

}
