package org.hospital.admin.repository;

import java.util.List;

import org.hospital.admin.model.SellMedicineModel;

public interface SellMedicineRepository {

	
	
	public boolean sellmedicine(SellMedicineModel model, String medicinename, String quantity);
	public List<SellMedicineModel> getAllSellmedicine();
	public int getMedicinePrice(String medicineName);
}
