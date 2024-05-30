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
import org.hospital.admin.model.StaffModel;
import org.hospital.admin.service.addStaffService;
import org.hospital.admin.service.addStaffServiceImpl;
import org.hospital.admin.service.*;
@WebServlet("/finalUpdDept")
public class finalUpdateDept extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int deptid=Integer.parseInt(request.getParameter("deptid"));
		String dname=request.getParameter("dname");
		String charges=request.getParameter("charges");
		
		DepartmentModel model=new DepartmentModel();
		model.setDeptId(deptid);
		model.setDeptName(dname);
		model.setCharges(charges);
		addDeptService sService=new addDeptServiceImpl();
		
		boolean b=sService.isUpdateDepartment(model);
		
		if(b)
		{
			
			RequestDispatcher rd=request.getRequestDispatcher("department.jsp");
			rd.include(request, response);
			out.println("<head>");
			
			out.println("<script type='text/javaScript'>");
			out.println("function alertTest(){");
			out.println("var heading=document.getElementById('response')");
			out.println("heading.innerHTML='Department Updated SuccessFully'");
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
			
			RequestDispatcher rd=request.getRequestDispatcher("department.jsp");
			rd.include(request, response);
			out.println("<head>");
			
			out.println("<script type='text/javaScript'>");
			out.println("function alertTest(){");
			out.println("var heading=document.getElementById('response')");
			out.println("heading.innerHTML='Department Not Updated SuccessFully'");
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
