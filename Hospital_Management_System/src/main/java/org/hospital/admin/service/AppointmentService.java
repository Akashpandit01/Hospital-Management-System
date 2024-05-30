package org.hospital.admin.service;

import java.util.List;

import org.hospital.admin.model.AppointmentModel;

public interface AppointmentService {

	boolean isScheduleAppointment(AppointmentModel model);
	

	public List<AppointmentModel> getAllAppointments();
	public List<AppointmentModel> getCompletedAppointments();
	public List<AppointmentModel> getProcessingAppointments();
	public List<AppointmentModel> getPendingAppointments();
	public List<AppointmentModel> getComplDoctAppoint(String doctorName);

	public boolean cancelAppointment(String appointid, String endtime);
}
