package org.hospital.admin.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.Date;

import org.hospital.admin.model.addPatientModel;
import org.hospital.admin.service.*;
@WebServlet("/adPatient")
public class addPatientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	addPatientService pService=new addPatientServiceImpl();
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("patientName");
		String disease=request.getParameter("diseaseName");
		String gender=request.getParameter("gender");
		String address=request.getParameter("address");
		String contact=request.getParameter("contact");
		
		LocalDate date=LocalDate.now();
		//System.out.println(date);
		String ldate=date.toString();
		//System.out.println(ldate);
		addPatientModel model=new addPatientModel(name,disease,gender,address,contact,ldate);
		
         boolean b=pService.isAddNewPatient(model);
				
		
         
         if(b)
 		{
 			
 			RequestDispatcher rd=request.getRequestDispatcher("mainProject.jsp");
 			rd.include(request, response);
 			out.println("<head>");
 			
 			out.println("<script type='text/javaScript'>");
 			out.println("function alertTest(){");
 			out.println("var heading=document.getElementById('response')");
 			out.println("heading.innerHTML='Patient Added SuccessFully'");
 			out.println("heading.style.color='green'");
 			out.println("heading.style.fontSize='1.1rem'");
 			out.println("heading.style.fontFamily='Inria Serif-Regular' ");
 			out.println("heading.style.fontWeight='800' ");
 			out.println("heading.style.letterSpacing='normal' ");
 			out.println("heading.style.textAlign='center' ");
 			
 			out.println("setTimeout(()=>{document.getElementById('response').innerHTML='' ");
 			out.println("},2500)");
 			
 			out.println("}");
 			out.println("</script>");
 			out.println("</head>");
 			out.println("<body onload='alertTest()'>");
 			
 			out.println("</body>");
 		}
 		else	
 		{
 			
 			RequestDispatcher rd=request.getRequestDispatcher("mainProject.jsp");
 			rd.include(request, response);
 			out.println("<head>");
 			
 			out.println("<script type='text/javaScript'>");
 			out.println("function alertTest(){");
 			out.println("var heading=document.getElementById('response')");
 			out.println("heading.innerHTML ='Patient Not Added SuccessFully'");
 			out.println("heading.style.color='red'");
 			out.println("heading.style.fontSize='1.1rem'");
 			out.println("heading.style.fontFamily='Inria Serif-Regular' ");
 			out.println("heading.style.fontWeight='800' ");
 			out.println("heading.style.letterSpacing='normal' ");
 			out.println("heading.style.textAlign='center' ");
 			
 			out.println("setTimeout(()=>{document.getElementById('response').innerHTML='' ");
 			out.println("},2500)");
 			
 			out.println("}");
 			out.println("</script>");
 			out.println("</head>");
 			out.println("<body onload='alertTest()'>");
 			
 			out.println("</body>");
 		}
		
	}

}
