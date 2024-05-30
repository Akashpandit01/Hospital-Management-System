package org.hospital.admin.controller;

import jakarta.servlet.RequestDispatcher;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.hospital.admin.model.DepartmentModel;
import org.hospital.admin.model.addPatientModel;
import org.hospital.admin.service.*;
@WebServlet("/addDept")
public class addDeptController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	addDeptService dService=new addDeptServiceImpl();
    
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("deptName");
		String charges=request.getParameter("charges");
		
		
		
		DepartmentModel model=new DepartmentModel(name,charges);
		
         boolean b=dService.isAddNewDepartment(model);
				
		
		if(b)	
		{
			RequestDispatcher r=request.getRequestDispatcher("departmentMain.jsp");
			
			
			
			r.include(request, response);
		}
		else 
		{
			RequestDispatcher r=request.getRequestDispatcher("departmentMain.jsp");
			
			
			
			
			r.include(request, response);
		}
		
	}

}
