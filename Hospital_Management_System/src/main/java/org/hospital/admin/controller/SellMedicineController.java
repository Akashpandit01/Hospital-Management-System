package org.hospital.admin.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.hospital.admin.model.MedicineInvoiceModel;
import org.hospital.admin.model.SellMedicineModel;
import org.hospital.admin.service.MedicineServiceImpl;
@WebServlet("/SellMedi")

public class SellMedicineController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
        String patientname = request.getParameter("patientName");
        String[] medicinename = request.getParameterValues("medicineName");
        String[] quantitySold = request.getParameterValues("quantity");
        SellMedicineModel model = new SellMedicineModel();
        model.setPatientname(patientname);
        MedicineServiceImpl mservice = new MedicineServiceImpl();
         System.out.println(patientname);
         request.setAttribute("patientName", patientname);
			/* System.out.println(medicinename) */;
        List<MedicineInvoiceModel> invoices = new ArrayList<>();
      
        for (int i = 0; i < medicinename.length; i++) {
            String medicinenames = medicinename[i];
            String quantitySolds = quantitySold[i];
           
            boolean b = mservice.sellMedicine(model, medicinenames, quantitySolds);
            if (b) {
                int price = mservice.getMedicinePrice(medicinenames) * Integer.parseInt(quantitySolds);
                MedicineInvoiceModel invoice = new MedicineInvoiceModel();
                invoice.setPatientName(patientname);
                invoice.setMedicineName(medicinenames);
                invoice.setPrice(price);
                invoice.setQuantity(Integer.parseInt(quantitySolds));
                invoices.add(invoice);
            } else {
                response.getWriter().println("<h1>Medicine not sold: " + medicinenames + "</h1>");
            }
        }

        request.setAttribute("invoices", invoices);
        request.getRequestDispatcher("invoice.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
