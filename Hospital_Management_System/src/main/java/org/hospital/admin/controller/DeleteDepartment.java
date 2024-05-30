package org.hospital.admin.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import org.hospital.admin.service.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/deleteDept")
public class DeleteDepartment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String deptId=request.getParameter("deptid");
		
		addDeptService dService=new addDeptServiceImpl();
		
		boolean b=dService.deleteDepartment(deptId);
		
		if(b)
		{
			RequestDispatcher rd=request.getRequestDispatcher("departmentMain.jsp");
			rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("departmentMain.jsp");
			rd.forward(request, response);
			
		}
	}

	

}
