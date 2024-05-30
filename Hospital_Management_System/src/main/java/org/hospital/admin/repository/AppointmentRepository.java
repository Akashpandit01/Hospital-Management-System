package org.hospital.admin.repository;

import java.util.List;

import org.hospital.admin.model.AppointmentModel;

public interface AppointmentRepository 
{

	

	public boolean isScheduleAppointment(String todayDate, AppointmentModel model, String currentTime);

	public List<AppointmentModel> getAllAppointments();
	public List<AppointmentModel> getCompletedAppointments();
	public List<AppointmentModel> getProcessingAppointments();
	public List<AppointmentModel> getPendingAppointments();

	public boolean cancelAppointment(String appointid, String endtime);

	public List<AppointmentModel> getComplDoctAppoint(String doctorName);

}
