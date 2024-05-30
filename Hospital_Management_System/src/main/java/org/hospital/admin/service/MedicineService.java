package org.hospital.admin.service;

import java.util.List;

import org.hospital.admin.model.MedicineModel;
import org.hospital.admin.model.SellMedicineModel;

public interface MedicineService {
	
	public boolean isAddMedicine(MedicineModel model);

	public List<MedicineModel> getAllmedicine();

	public boolean isDeleteMedicineById(int mid);

	public boolean isUpadateMedicine(MedicineModel model);

	public boolean sellMedicine(SellMedicineModel model, String medicinename, String quantitySold);
//	public int getMedicineId(String medicineName);
	public List<SellMedicineModel> getAllsellmedicine();
	public int getMedicinePrice(String medicineName);

	public List<MedicineModel> searchMedicineByName(String query);

}
