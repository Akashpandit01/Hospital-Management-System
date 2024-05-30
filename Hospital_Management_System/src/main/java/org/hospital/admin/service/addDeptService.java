package org.hospital.admin.service;

import java.util.List;

import org.hospital.admin.model.DepartmentModel;

public interface addDeptService {

	boolean isAddNewDepartment(DepartmentModel model);
    public List<DepartmentModel> getAllDepartments();
	boolean deleteDepartment(String deptId);
	boolean isUpdateDepartment(DepartmentModel model);
	public List<DepartmentModel> getAllDepartmentsSearch(String name);
	public int totalDepartments();
}
