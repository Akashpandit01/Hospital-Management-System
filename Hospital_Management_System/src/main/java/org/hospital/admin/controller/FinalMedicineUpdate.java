package org.hospital.admin.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.hospital.admin.model.MedicineModel;
import org.hospital.admin.service.MedicineServiceImpl;

@WebServlet("/FinalMedicineUpdate")
public class FinalMedicineUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String btn=request.getParameter("s");
		if(btn!=null)
		{
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			int mid=Integer.parseInt(request.getParameter("mid"));
			String medname=request.getParameter("medicineName");
			String price=request.getParameter("Price");
			String manufact=request.getParameter("Manufacture");
			String Expiry=request.getParameter("Expiry");
			MedicineModel model=new MedicineModel();
			model.setId(mid);
			model.setName(medname);
			model.setPrice(price);
			model.setManufacture(manufact);
			model.setExpiry(Expiry);
			MedicineServiceImpl mservice=new MedicineServiceImpl();
			boolean b=mservice.isUpadateMedicine(model);
			if(b)
			{
				RequestDispatcher r=request.getRequestDispatcher("medicine.jsp");
				r.forward(request, response);
			}else {
				out.println("medicne not updated");
			}
			
					
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
