package org.hospital.admin.repository;

import org.hospital.admin.config.DBConfig;
import org.hospital.admin.model.RegisterModel;

public class registerRepositoryImpl extends DBConfig implements registerRepository {

	@Override
	public boolean isRegister(RegisterModel model) {
		
		
		try
		{
			psmt=conn.prepareStatement("insert into credentials values(?,?,?)");
			psmt.setString(1, model.getUsername());
			psmt.setString(2, model.getPassword());
			psmt.setString(3, model.getRole());
			
			int value=psmt.executeUpdate();
			return value>0?true:false;
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);
			return false;
		}
		
	}

}
