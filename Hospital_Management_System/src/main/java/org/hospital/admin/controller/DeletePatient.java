package org.hospital.admin.controller;

import jakarta.servlet.RequestDispatcher;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import org.hospital.admin.service.*;

@WebServlet("/deletePatient")
public class DeletePatient extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String pid=request.getParameter("patientid");
		
		addPatientService pService=new addPatientServiceImpl();
		
		boolean b=pService.deletePatient(pid);
		if(b)
		{
			RequestDispatcher r =  request.getRequestDispatcher("mainProject.jsp");
			r.forward(request, response);
		}
		else 
		{
			RequestDispatcher r =  request.getRequestDispatcher("mainProject.jsp");
			r.forward(request, response);
		}
		
	}

	

}
