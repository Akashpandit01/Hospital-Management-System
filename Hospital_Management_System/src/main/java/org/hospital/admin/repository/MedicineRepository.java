package org.hospital.admin.repository;

import java.util.List;

import org.hospital.admin.model.MedicineModel;

public interface MedicineRepository {

	
	public boolean isAddMedicine(MedicineModel model);
	public List<MedicineModel> getAllmedicine();
	
	public boolean isDeleteMedicinebyid(int id);
	public boolean isUpdateMedicine(MedicineModel model);
}
