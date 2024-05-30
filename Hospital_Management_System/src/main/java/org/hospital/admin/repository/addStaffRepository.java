package org.hospital.admin.repository;

import java.util.List;

import org.hospital.admin.model.StaffModel;

public interface addStaffRepository 
{
    public boolean isAddNewstaff(StaffModel model);
    
    public List<StaffModel> getAllStaff();

	public boolean deleteStaff(String staffid);

	public boolean isUpdateStaff(StaffModel model);

	public List<StaffModel> getAllStaffsByName(String name);

	public List<StaffModel> getAllStaffsByDeptName(String name);

	public int totalDoctors();

	public List<StaffModel> getAllDoctors();
}
