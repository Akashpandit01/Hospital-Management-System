package org.hospital.admin.repository;

import java.util.List;

import org.hospital.admin.model.DepartmentModel;

public interface addDeptRepository {

	public boolean isAddNewDepartment(DepartmentModel model);

	public List<DepartmentModel> getAllDepartments();

	public boolean deleteDepartment(String deptId);

	public boolean isUpdateDepartment(DepartmentModel model);

	public List<DepartmentModel> getAllDepartmentsSearch(String name);

	public int totalDepartments();

}
