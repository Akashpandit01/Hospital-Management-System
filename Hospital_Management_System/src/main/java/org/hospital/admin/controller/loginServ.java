package org.hospital.admin.controller;
import org.hospital.admin.service.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/login")


public class loginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		AdminService aService=new AdminServiceImpl();
		String role=aService.verifyStaff(username, password);
		out.println(role);
		if(role != null)
		{
			if(role.equalsIgnoreCase("admin"))
			{
				HttpSession session=request.getSession(true);
				session.setAttribute("uname",username );
				session.setAttribute("pass", password);
				RequestDispatcher rd=request.getRequestDispatcher("adminDashBoard.jsp");
				rd.forward(request, response);
			}
			else if(role.equalsIgnoreCase("receptionist"))
			{
				HttpSession session=request.getSession(true);
				session.setAttribute("uname",username );
				session.setAttribute("pass", password);
				RequestDispatcher rd=request.getRequestDispatcher("RMainProject.jsp");
				rd.forward(request, response);
			}
			else if(role.equalsIgnoreCase("pharmacist"))
			{
				HttpSession session=request.getSession(true);
				session.setAttribute("uname",username );
				session.setAttribute("pass", password);
				RequestDispatcher rd=request.getRequestDispatcher("");
				rd.forward(request, response);
			}
			else if(role.equalsIgnoreCase("doctor"))
			{
				HttpSession session=request.getSession(true);
				session.setAttribute("uname",username );
				session.setAttribute("pass", password);
				RequestDispatcher rd=request.getRequestDispatcher("doctor.jsp");
				rd.forward(request, response);
			}
			
		}
		
		else
		{
			
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
				out.println("Invalid username and password");
			
		}
		
	}

}
