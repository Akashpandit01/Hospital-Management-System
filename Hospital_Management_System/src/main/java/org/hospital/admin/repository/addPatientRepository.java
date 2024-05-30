package org.hospital.admin.repository;

import java.util.List;

import org.hospital.admin.model.addPatientModel;

public interface addPatientRepository {

	
	public boolean isAddNewPatient(addPatientModel model);

	public int noOfMaleFemale(String gender,String Year);

	public List<addPatientModel> getAllPatients();

	public boolean deletePatient(String pid);

	public boolean isUpdatePatient(addPatientModel model);

	public List<addPatientModel> getAllPatientsByName(String name);

	public int totalPatients();

	public int noOfFeMale(String gender, String year);
	public List<addPatientModel> getAllDocAssignedPatients();

	public boolean isAssignDoctor(String patientId, String staffName);
	public List<addPatientModel> getPatientWithDoctor();
}
