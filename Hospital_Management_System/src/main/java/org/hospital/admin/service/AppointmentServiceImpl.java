package org.hospital.admin.service;
import org.hospital.admin.repository.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hospital.admin.model.AppointmentModel;

public class AppointmentServiceImpl implements AppointmentService{

	AppointmentRepository aRepo=new AppointmentRepositoryImpl();
	public boolean isScheduleAppointment(AppointmentModel model) {

		
		Date d=new Date();
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String todayDateTime=dateFormat.format(d);
		System.out.println(todayDateTime);
		
		String []DateTimeSplit=todayDateTime.split(" ");
		String todayDate=DateTimeSplit[0];
		String currentTime=DateTimeSplit[1];
		
		return aRepo.isScheduleAppointment(todayDate, model,currentTime);
	}

	
	public List<AppointmentModel> getAllAppointments() {
		
		return aRepo.getAllAppointments();
	}


	
	public List<AppointmentModel> getCompletedAppointments() {
		
		return aRepo.getCompletedAppointments();
	}


	
	public List<AppointmentModel> getProcessingAppointments() {
		
		return aRepo.getProcessingAppointments();
	}


	
	public List<AppointmentModel> getPendingAppointments() {
		
		return aRepo.getPendingAppointments();
	}


	@Override
	public boolean cancelAppointment(String appointid,String endtime) {
		
		return aRepo.cancelAppointment(appointid,endtime);
	}


	@Override
	public List<AppointmentModel> getComplDoctAppoint(String doctorName) {
		
		return aRepo.getComplDoctAppoint(doctorName);
	}
	
	


}
