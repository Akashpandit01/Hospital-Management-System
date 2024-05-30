package org.hospital.admin.model;

public class StaffModel {

	protected int staffId;
	protected String staffName;
	protected String designation;
	protected String speciallty;
	protected String Address;
	protected String contact;
	protected int deptId;
	protected String deptName;

	@Override
	public String toString() {
		return "StaffModel [staffId=" + staffId + ", staffName=" + staffName + ", designation=" + designation
				+ ", speciallty=" + speciallty + ", Address=" + Address + ", contact=" + contact + ", deptId=" + deptId
				+ ", deptName=" + deptName + "]";
	}

	public StaffModel() {

	}

	public StaffModel(String staffName, String designation, String speciallty, String address, String contact,
			int deptId) {
		super();
		this.staffName = staffName;
		this.designation = designation;
		this.speciallty = speciallty;
		Address = address;
		this.contact = contact;
		this.deptId = deptId;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getSpeciallty() {
		return speciallty;
	}

	public void setSpeciallty(String speciallty) {
		this.speciallty = speciallty;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
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
}
