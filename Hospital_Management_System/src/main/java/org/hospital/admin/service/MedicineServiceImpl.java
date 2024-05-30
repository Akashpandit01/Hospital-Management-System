package org.hospital.admin.service;

import java.util.List;

import org.hospital.admin.model.MedicineModel;
import org.hospital.admin.model.SellMedicineModel;
import org.hospital.admin.repository.MedicineRepositoryImpl;
import org.hospital.admin.repository.SellMedicineRepositoryImpl;

public class MedicineServiceImpl implements MedicineService{

	
	
	MedicineRepositoryImpl m = new MedicineRepositoryImpl();
	SellMedicineRepositoryImpl s = new SellMedicineRepositoryImpl();

	@Override
	public boolean isAddMedicine(MedicineModel model) {
		return m.isAddMedicine(model);

	}

	@Override
	public List<MedicineModel> getAllmedicine() {

		return m.getAllmedicine();
	}

	@Override
	public boolean isDeleteMedicineById(int mid) {

		return m.isDeleteMedicinebyid(mid);
	}

	@Override
	public boolean isUpadateMedicine(MedicineModel model) {
		// TODO Auto-generated method stub
		return m.isUpdateMedicine(model);
	}

	@Override
	public boolean sellMedicine(SellMedicineModel model, String medicinename, String quantity) {

		return s.sellmedicine(model, medicinename, quantity);
	}
//	@Override
//	public int getMedicineId(String medicineName) {
//	
//		return s.;
//	}

	@Override
	public List<SellMedicineModel> getAllsellmedicine() {
		
		return s.getAllSellmedicine();
	}
	public int getMedicinePrice(String medicineName) {
        return  s.getMedicinePrice(medicineName);
    }

	@Override
	public List<MedicineModel> searchMedicineByName(String query) {
		// TODO Auto-generated method stub
		return null;
	}

}
