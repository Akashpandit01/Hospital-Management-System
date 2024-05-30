package org.hospital.admin.service;
import org.hospital.admin.repository.*;
public class AdminServiceImpl implements AdminService{

	 AdminRepository aRepo=new AdminRepositoryImpl();
	@Override
	public String verifyStaff(String username, String password) {
		
		return aRepo.verifyStaff(username, password);
	}

	
}
