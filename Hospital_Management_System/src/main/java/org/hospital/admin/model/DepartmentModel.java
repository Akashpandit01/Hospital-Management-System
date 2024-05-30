package org.hospital.admin.model;

public class DepartmentModel
{

	protected int deptId;
	protected String deptName;
	protected String  charges;
	
	public DepartmentModel()
	{
		
	}

	public DepartmentModel(String deptName, String charges) {
		
		this.deptName = deptName;
		this.charges = charges;
	}

	public int getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getCharges() {
		return charges;
	}

	public void setCharges(String charges) {
		this.charges = charges;
	}
	
	
}
