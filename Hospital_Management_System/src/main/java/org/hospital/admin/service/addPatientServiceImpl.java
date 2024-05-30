package org.hospital.admin.service;

import java.util.List;

import org.hospital.admin.model.addPatientModel;
import org.hospital.admin.repository.addPatientRepository;
import org.hospital.admin.repository.addPatientRepositoryImpl;

public class addPatientServiceImpl implements addPatientService
{
       addPatientRepository pRepo=new addPatientRepositoryImpl();
	
	public boolean isAddNewPatient(addPatientModel model) 
	{
		
		return pRepo.isAddNewPatient(model);
	}

	
	public int noOfMaleFemale(String gender,String Year) {
		
		return pRepo.noOfMaleFemale(gender,Year);
	}


	
	public List<addPatientModel> getAllPatients() {
		
		return pRepo.getAllPatients();
	}


	
	public boolean deletePatient(String pid) {
		
		return pRepo.deletePatient(pid);
	}


	
	public boolean isUpdatePatient(addPatientModel model) {
		
		return pRepo.isUpdatePatient(model);
	}


	@Override
	public List<addPatientModel> getAllPatientsByName(String name) {
		
		return pRepo.getAllPatientsByName(name);
	}


	
	public int totalPatients() {
		
		return pRepo.totalPatients();
	}


	@Override
	public List<addPatientModel> getAllDocAssignedPatients() {
		
		return pRepo.getAllDocAssignedPatients();
	}


	@Override
	public boolean isAssignDoctor(String patientId, String staffName) {
		
		return pRepo.isAssignDoctor(patientId,staffName);
	}


	@Override
	public List<addPatientModel> getPatientWithDoctor() {
		
		return pRepo.getPatientWithDoctor();
	}


	

	
}
