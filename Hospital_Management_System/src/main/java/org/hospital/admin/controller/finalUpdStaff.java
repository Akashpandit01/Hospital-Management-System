package org.hospital.admin.controller;

import jakarta.servlet.RequestDispatcher;

import org.hospital.admin.service.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.hospital.admin.model.StaffModel;
import org.hospital.admin.model.addPatientModel;
import org.hospital.admin.service.addPatientService;
import org.hospital.admin.service.addPatientServiceImpl;
@WebServlet("/finalUpdStaff")
public class finalUpdStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int sid=Integer.parseInt(request.getParameter("sid"));
		String sname=request.getParameter("sname");
		String dept=request.getParameter("department");
		String desig=request.getParameter("sdesignstion");
		String specialty=request.getParameter("sspecialty");
		String contact=request.getParameter("scontact");
		
		StaffModel model=new StaffModel();
		model.setStaffId(sid);
		model.setStaffName(sname);
		model.setDeptName(dept);model.setDesignation(desig);
		model.setSpeciallty(specialty);
		model.setContact(contact);
		addStaffService sService=new addStaffServiceImpl();
		
		boolean b=sService.isUpdateStaff(model);
		
		if(b)
		{
			
			RequestDispatcher rd=request.getRequestDispatcher("staff.jsp");
			rd.include(request, response);
			out.println("<head>");
			
			out.println("<script type='text/javaScript'>");
			out.println("function alertTest(){");
			out.println("var heading=document.getElementById('response')");
			out.println("heading.innerHTML='Staff Updated SuccessFully'");
			out.println("heading.style.color='green'");
			out.println("heading.style.fontSize='1.1rem'");
			out.println("heading.style.fontFamily='Inria Serif-Regular' ");
			out.println("heading.style.fontWeight='800' ");
			out.println("heading.style.letterSpacing='normal' ");
			out.println("heading.style.textAlign='center' ");
			
			out.println("setTimeout(()=>{document.getElementById('response').innerHTML='' ");
			out.println("},4000)");
			
			out.println("}");
			out.println("</script>");
			out.println("</head>");
			out.println("<body onload='alertTest()'>");
			
			out.println("</body>");
		}
		else	
		{
			
			RequestDispatcher rd=request.getRequestDispatcher("staff.jsp");
			rd.include(request, response);
			out.println("<head>");
			
			out.println("<script type='text/javaScript'>");
			out.println("function alertTest(){");
			out.println("var heading=document.getElementById('response')");
			out.println("heading.innerHTML='Staff Not Updated SuccessFully'");
			out.println("heading.style.color='red'");
			out.println("heading.style.fontSize='1.1rem'");
			out.println("heading.style.fontFamily='Inria Serif-Regular' ");
			out.println("heading.style.fontWeight='800' ");
			out.println("heading.style.letterSpacing='normal' ");
			out.println("heading.style.textAlign='center' ");
			
			out.println("setTimeout(()=>{document.getElementById('response').innerHTML='' ");
			out.println("},4000)");
			
			out.println("}");
			out.println("</script>");
			out.println("</head>");
			out.println("<body onload='alertTest()'>");
			
			out.println("</body>");
		}
		
	}

}
