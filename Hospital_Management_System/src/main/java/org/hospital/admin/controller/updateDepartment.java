package org.hospital.admin.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/updDept")
public class updateDepartment extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int deptid=Integer.parseInt(request.getParameter("deptId"));
		String dname=request.getParameter("deptName");
		String charges=request.getParameter("charges");
		
		
		RequestDispatcher rd=request.getRequestDispatcher("updateDepartmentDashBoard.jsp");
		rd.include(request, response);
		
		out.print("<div id='subcontent'>");
		out.println("<h2 style='color: #093b6a; font-family: 'Times New Roman', Times, serif;'>Update Department</h2>");
		out.println("<form name='frm' method='POST' action='finalUpdDept'>");
		out.println("<label for='deptid'></label> <input type='hidden' class='form-control' id='deptid' name='deptid'   value='"+deptid+"' placeholder='' >");
		out.println("<label for='deptName'>Department Name</label> <input type='text' class='form-control' id='deptName' name='dname'   value='"+dname+"' placeholder='Enter department name' required>");
		
		out.println("<div class='form-group'><label for='charges'>Charges </label> <input type='text' class='form-control' id='charges' name='charges' value='"+charges+"'  placeholder='Enter charges in rupee' required></div>");
		
	    out.println("<button type='submit' name='s' class='btn btn-primary'>Update</button></form>");
	    out.println("</div></div></div></div></div></div></div>");
	}

	
	

}
