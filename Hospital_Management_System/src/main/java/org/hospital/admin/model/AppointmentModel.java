package org.hospital.admin.model;

public class AppointmentModel 
{
      private int appointid;
      private String date;
      private String startTime;
      private String endTime;
      private int patientid;
      private int staffid;
      private String patientName;
      private String staffName;
      
      public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public AppointmentModel ()
      {
    	  
      }

	public AppointmentModel(String date, String startTime, String endTime) {
		super();
		this.date = date;
		this.startTime = startTime;
		this.endTime = endTime;
	}

	public int getAppointid() {
		return appointid;
	}

	public void setAppointid(int appointid) {
		this.appointid = appointid;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public int getPatientid() {
		return patientid;
	}

	public void setPatientid(int patientid) {
		this.patientid = patientid;
	}

	public int getStaffid() {
		return staffid;
	}

	public void setStaffid(int staffid) {
		this.staffid = staffid;
	}
      
      
}
