package org.hospital.admin.service;

import java.util.List;

import org.hospital.admin.model.DepartmentModel;
import org.hospital.admin.repository.*;

public class addDeptServiceImpl implements addDeptService
{
    addDeptRepository dRepo=new addDeptRepositoryImpl();
	
	public boolean isAddNewDepartment(DepartmentModel model) {
	
		return dRepo.isAddNewDepartment(model);
	}

	
	public List<DepartmentModel> getAllDepartments() {
		
		return dRepo.getAllDepartments();
	}

	
	public boolean deleteDepartment(String deptId) {
		
		return dRepo.deleteDepartment(deptId);
	}

	
	public boolean isUpdateDepartment(DepartmentModel model) {
		
		return dRepo.isUpdateDepartment(model);
	}


	@Override
	public List<DepartmentModel> getAllDepartmentsSearch(String name) {
		
		return dRepo.getAllDepartmentsSearch(name);
	}


	
	public int totalDepartments() {
		
		return dRepo.totalDepartments();
	}

}
