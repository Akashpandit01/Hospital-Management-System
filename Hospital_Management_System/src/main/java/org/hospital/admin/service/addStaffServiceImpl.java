package org.hospital.admin.service;

import java.util.List;

import org.hospital.admin.model.StaffModel;
import org.hospital.admin.model.addPatientModel;
import org.hospital.admin.repository.*;
public class addStaffServiceImpl implements addStaffService{

	addStaffRepository sRepo=new addStaffRepositoryImpl();
	
	public boolean isAddNewStaff(StaffModel model) {
		
		return sRepo.isAddNewstaff(model);
	}
	
public List<StaffModel> getAllStaff() {
		
		return sRepo.getAllStaff();
	}

public boolean deleteStaff(String staffid) {
	
	return sRepo.deleteStaff(staffid);
}


public boolean isUpdateStaff(StaffModel model) {
	
	return sRepo.isUpdateStaff(model);
}


public List<StaffModel> getAllStaffsByName(String name) {
	
	return sRepo.getAllStaffsByName(name);
}

@Override
public List<StaffModel> getAllStaffsByDeptName(String name) {
	return sRepo.getAllStaffsByDeptName(name);
}

@Override
public int totalDoctors() {
	
	return sRepo.totalDoctors();
}

@Override
public List<StaffModel> getAllDoctors() {
	
	return sRepo.getAllDoctors();
}

}
