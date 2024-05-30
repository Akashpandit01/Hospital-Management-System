package org.hospital.admin.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/updPatient")
public class updatePatient extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int pid=Integer.parseInt(request.getParameter("pid"));
		String pname=request.getParameter("pname");
		String disease=request.getParameter("pdisease");
		String gender=request.getParameter("pgender");
		String contact=request.getParameter("pcontact");
		String address=request.getParameter("padress");
		
		RequestDispatcher rd=request.getRequestDispatcher("updPatientDashBoard.jsp");
		rd.include(request, response);
		
		out.print("<div id='subcontent'>");
		out.println("<h2 style='color: #093b6a; font-family: 'Times New Roman', Times, serif;'>Update Patient</h2>");
		out.println("<form name='frm' method='POST' action='finalUpd'>");
		out.println("<label for='patientName'></label> <input type='hidden' class='form-control' id='patientId' name='pid'   value='"+pid+"' placeholder='' >");
		out.println("<label for='patientName'>Patient Name</label> <input type='text' class='form-control' id='patientName' name='pname'   value='"+pname+"' placeholder='Enter patient name' required>");
		
		out.println("<div class='form-group'><label for='diseaseName'>Disease Name</label> <input type='text' class='form-control' id='diseaseName' name='pdisease' value='"+disease+"'  placeholder='Enter disease name' required></div>");
		out.println("<div class='form-group'><label for='address'>Address</label> <input type='text' class='form-control' id='address' name='padress'  value='"+address+"'   placeholder='Enter address' required>	</div>");
		out.println("<div class='form-group'><label for='gender'>Gender</label>  <select class='form-control' style='width:90%;'	id='gender' name='pgender'   required><option value='"+gender+"' selected>"+gender+"</option><option value='male'>Male</option><option value='female'>Female</option><option value='other'>Other</option></select></div>");
	    out.println("<div class='form-group'><label for='contact'>Contact</label> <input type='text' class='form-control' id='contact' name='pcontact'  value='"+contact+"'  placeholder='Enter contact number' required></div>");
	    out.println("<button type='submit' name='s' class='btn btn-primary'>Update</button></form>");
	    out.println("</div></div></div></div></div></div></div>");
	}

	

}
