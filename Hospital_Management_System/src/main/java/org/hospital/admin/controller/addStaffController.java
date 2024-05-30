package org.hospital.admin.controller;

import jakarta.servlet.RequestDispatcher;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.hospital.admin.model.StaffModel;
import org.hospital.admin.service.*;

@WebServlet("/addStaff")
public class addStaffController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       addStaffService sService=new addStaffServiceImpl();
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String sname=request.getParameter("staffName");
		String designation=request.getParameter("designation");
		String specialty=request.getParameter("specialty");
		String address=request.getParameter("address");
		String contact=request.getParameter("contact");
		int deptId= Integer.parseInt(request.getParameter("department"));
		
		
		
		StaffModel model=new StaffModel(sname,designation,specialty,address,contact,deptId);
		
		boolean b=sService.isAddNewStaff(model);
		

		if(b)	
		{
			RequestDispatcher r=request.getRequestDispatcher("staffMain.jsp");
			
			r.include(request, response);
		}
		else 
		{
			RequestDispatcher r=request.getRequestDispatcher("staffMain.jsp");
			
			r.include(request, response);
		}
		
		
	}

}
