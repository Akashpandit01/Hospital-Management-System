package org.hospital.admin.service;

import org.hospital.admin.model.RegisterModel;
import org.hospital.admin.repository.*;
public class registerImpl implements register{

	registerRepository rRepo=new registerRepositoryImpl();
	@Override
	public boolean isRegister(RegisterModel model) {
		
		return rRepo.isRegister(model);
	}

}
