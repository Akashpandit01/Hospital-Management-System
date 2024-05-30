package org.hospital.admin.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.hospital.admin.model.MedicineModel;
import org.hospital.admin.service.*;
@WebServlet("/SearchMedicine")
public class SearchMedicineController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private MedicineService medicineService = new MedicineServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String query = request.getParameter("query");
        List<MedicineModel> medicines = medicineService.searchMedicineByName(query);

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        if (medicines != null && !medicines.isEmpty()) {
            out.println("<table class='table'>");
            out.println("<thead><tr><th>Medicine ID</th><th>Medicine Name</th><th>Price</th><th>Manufacturer Date</th><th>Expiry Date</th><th>Delete</th><th>Update</th></tr></thead>");
            out.println("<tbody>");
            for (MedicineModel model : medicines) {
                out.println("<tr>");
                out.println("<th scope='row'>" + model.getId() + "</th>");
                out.println("<td>" + model.getName() + "</td>");
                out.println("<td>" + model.getPrice() + "</td>");
                out.println("<td>" + model.getManufacture() + "</td>");
                out.println("<td>" + model.getExpiry() + "</td>");
                out.println("<td><a href='Delete?medicineid=" + model.getId() + "'><i class='fas fa-trash-alt ml-3' aria-hidden='true'></i></a></td>");
                out.println("<td><a href='UpdMedicine?mid=" + model.getId() + "&medicineName=" + model.getName() + "&Price=" + model.getPrice() + "&Manufacture=" + model.getManufacture() + "&Expiry=" + model.getExpiry() + "'><i class='fas fa-edit ml-3' aria-hidden='true'></i></a></td>");
                out.println("</tr>");
            }
            out.println("</tbody>");
            out.println("</table>");
        } else {
            out.println("<h5>No results found</h5>");
        }
    }
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
