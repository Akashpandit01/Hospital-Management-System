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
@WebServlet("/a")
public class AssignDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	addPatientService pService=new addPatientServiceImpl();
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String patientId=request.getParameter("patientId");
		String staffName=request.getParameter("doctname");
		
		
		boolean b=pService.isAssignDoctor(patientId, staffName);
		

			out.println(b);	
		
         
         if(b)
 		{
 			

 			RequestDispatcher rd=request.getRequestDispatcher("patient_info.jsp");
 			rd.forward(request, response);
 			out.println("<head>");
 			
 			out.println("<script type='text/javaScript'>");
 			out.println("function alertTest(){");
 			out.println("var heading=document.getElementById('Assigned')");
 			out.println("heading.innerHTML='Doctor Assigned SuccessFully'");
 			out.println("heading.style.color='green'");
 			out.println("heading.style.fontSize='1.1rem'");
 			out.println("heading.style.fontFamily='Inria Serif-Regular' ");
 			out.println("heading.style.fontWeight='800' ");
 			out.println("heading.style.letterSpacing='normal' ");
 			out.println("heading.style.textAlign='center' ");
 			out.println("heading.style.zIndex='9999' ");
 			
 			out.println("setTimeout(()=>{document.getElementById('Assigned').innerHTML='' ");
 			out.println("},2500)");
 			
 			out.println("}");
 			out.println("</script>");
 			out.println("</head>");
 			out.println("<body onload='alertTest()'></body>");
 			
 			
 		}
 		else	
 		{
 			
 			RequestDispatcher rd=request.getRequestDispatcher("patient_info.jsp");
 			rd.forward(request, response);
 			out.println("<head>");
 			
 			out.println("<script type='text/javaScript'>");
 			out.println("function alertTest(){");
 			out.println("var heading=document.getElementById('Assigned')");
 			out.println("heading.innerHTML ='Doctor Not Assigned SuccessFully'");
 			out.println("heading.style.color='red'");
 			out.println("heading.style.fontSize='1.1rem'");
 			out.println("heading.style.fontFamily='Inria Serif-Regular' ");
 			out.println("heading.style.fontWeight='800' ");
 			out.println("heading.style.letterSpacing='normal' ");
 			out.println("heading.style.textAlign='center' ");
 			out.println("heading.style.zIndex='9999' ");
 			
 			out.println("setTimeout(()=>{document.getElementById('Assigned').innerHTML='' ");
 			out.println("},2500)");
 			
 			out.println("}");
 			out.println("</script>");
 			out.println("</head>");
 			out.println("<body onload='alertTest()'></body>");
 			
 			
 		}
		
	}

	
	
}
