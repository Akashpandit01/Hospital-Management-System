package org.hospital.admin.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.hospital.admin.service.MedicineServiceImpl;
@WebServlet("/Delete")
public class DeleteMedicinecontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int mid=Integer.parseInt(request.getParameter("medicineid"));
		out.println("Selected medicine id "+mid);
		MedicineServiceImpl mservice=new MedicineServiceImpl();
		
		boolean b=mservice.isDeleteMedicineById(mid);
		
		if(b)
		{
			RequestDispatcher r=request.getRequestDispatcher("medicine.jsp");
			r.forward(request, response);
		}else {
			out.println("Some problem is there");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
