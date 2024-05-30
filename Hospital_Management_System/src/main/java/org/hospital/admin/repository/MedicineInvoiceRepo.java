package org.hospital.admin.repository;

import org.hospital.admin.model.MedicineInvoiceModel;

public interface MedicineInvoiceRepo {
	public boolean generateMedicineInvoice(MedicineInvoiceModel invoice);
}
