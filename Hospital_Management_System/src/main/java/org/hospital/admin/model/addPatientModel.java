package org.hospital.admin.model;

public class addPatientModel
{
	private int patientid;
	private String name;
	private String disease;
	private String gender;
	private String Address;
	private String contact;
	private String date;
	private String staffName;
	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	private int StaffId;
	
	public int getStaffId() {
		return StaffId;
	}

	public void setStaffId(int staffId) {
		StaffId = staffId;
	}

	

	

	public addPatientModel()
	{
		
	}

	public addPatientModel(String name, String disease, String gender, String Address, String contact,String date) {
		
		
		this.name = name;
		this.disease = disease;
		this.gender = gender;
		this.Address = Address;
		this.contact = contact;
		this.date=date;
	}

	public int getPatientid() {
		return patientid;
	}

	public void setPatientid(int patientid) {
		this.patientid = patientid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDisease() {
		return disease;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAdress() {
		return Address;
	}

	public void setAdress(String adress) {
		Address = adress;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	
	
	

}
