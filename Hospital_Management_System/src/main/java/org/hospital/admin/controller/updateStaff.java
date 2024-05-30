package org.hospital.admin.controller;
import org.hospital.admin.service.*;
import org.hospital.admin.model.*;
import java.util.*;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/updStaff")
public class updateStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int sid=Integer.parseInt(request.getParameter("sid"));
		String sname=request.getParameter("sname");
		String sdeptname=request.getParameter("sdeptname");
		String sdesignation=request.getParameter("sdesignation");
		String sspecialty=request.getParameter("sspecialty");
		String scontact=request.getParameter("scontact");
		
		RequestDispatcher rd=request.getRequestDispatcher("updPatientDashBoard.jsp");
		rd.include(request, response);
		
		out.print("<div id='subcontent'>");
		out.println("<h2 style='color: #093b6a; font-family: 'Times New Roman', Times, serif;'>Update Staff</h2>");
		out.println("<form name='frm' method='POST' action='finalUpdStaff'>");
		out.println("<label for='staffId'></label> <input type='hidden' class='form-control' id='staffId' name='sid'   value='"+sid+"' placeholder='' >");
		out.println("<label for='staffName'>Staff Name</label> <input type='text' class='form-control' id='staffName' name='sname'   value='"+sname+"' placeholder='Enter staff name' required>");
		
		//out.println("<div class='form-group'><label for='sdeptname'>Department Name</label> <input type='text' class='form-control' id='sdeptname' name='sdeptname' value='"+sdeptname+"'  placeholder='Enter department name' required></div>");
		
		
		out.println("<div class='form-group'>");
		 out.println(" <label for='department'>Department</label>");
		 out.println("<select class='form-control' style='width: 90%;' id='department' name='department' ><option value='' selected>"+sdeptname+"</option>");
											
		 addDeptService dService=new addDeptServiceImpl();
		 List<DepartmentModel> list=dService.getAllDepartments();
		 if(list!=null) {
				
		     for(DepartmentModel m:list){
			
		 out.println("<option value="+m.getDeptName()+">"+m.getDeptName()+"</option>");
				
		     }	
		 }
				
		 
		 out.println("</select>");
		 out.println("</div>");
		
		out.println("<div class='form-group'><label for='sdesignstion'>Designation</label> <input type='text' class='form-control' id='sdesignstion' name='sdesignstion'  value='"+sdesignation+"'   placeholder='Enter designation' required>	</div>");
		out.println("<div class='form-group'><label for='sspecialty'>Specialty</label> <input type='text' class='form-control' id='contact' name='sspecialty'  value='"+sspecialty+"'  placeholder='Enter specialty' required></div>");
	    out.println("<div class='form-group'><label for='contact'>Contact</label> <input type='text' class='form-control' id='contact' name='scontact'  value='"+scontact+"'  placeholder='Enter contact number' required></div>");
	    out.println("<button type='submit' name='s' class='btn btn-primary'>Update</button></form>");
	    out.println("</div></div></div></div></div></div></div>");
	}

	
	
}
