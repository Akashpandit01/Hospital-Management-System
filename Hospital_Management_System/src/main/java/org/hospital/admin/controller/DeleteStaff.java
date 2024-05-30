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

@WebServlet("/deleteStaff")
public class DeleteStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String staffid=request.getParameter("staffid");
		
		addStaffService sService=new addStaffServiceImpl();
		
		
		boolean b=sService.deleteStaff(staffid);
		
		if(b)
		{
			RequestDispatcher rd=request.getRequestDispatcher("staffMain.jsp");
			rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("staffMain.jsp");
			rd.forward(request, response);
		}
	}

	
	

}
