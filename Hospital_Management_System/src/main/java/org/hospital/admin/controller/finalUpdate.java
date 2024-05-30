package org.hospital.admin.controller;
import org.hospital.admin.service.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.hospital.admin.model.addPatientModel;
@WebServlet("/finalUpd")
public class finalUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int pid=Integer.parseInt(request.getParameter("pid"));
		String pname=request.getParameter("pname");
		String disease=request.getParameter("pdisease");
		String gender=request.getParameter("pgender");
		String contact=request.getParameter("pcontact");
		String address=request.getParameter("padress");
		
		addPatientModel model=new addPatientModel();
		model.setPatientid(pid);
		model.setName(pname);
		model.setDisease(disease);
		model.setGender(gender);
		model.setContact(contact);
		model.setAdress(address);
		
		addPatientService pService=new addPatientServiceImpl();
		
		boolean b=pService.isUpdatePatient(model);
		
		if(b)
		{
			
			RequestDispatcher rd=request.getRequestDispatcher("patient.jsp");
			rd.include(request, response);
			out.println("<head>");
			
			out.println("<script type='text/javaScript'>");
			out.println("function alertTest(){");
			out.println("var heading=document.getElementById('response')");
			out.println("heading.innerHTML='Patient Updated SuccessFully'");
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
			
			RequestDispatcher rd=request.getRequestDispatcher("patient.jsp");
			rd.include(request, response);
			out.println("<head>");
			
			out.println("<script type='text/javaScript'>");
			out.println("function alertTest(){");
			out.println("var heading=document.getElementById('response')");
			out.println("heading.innerHTML ='Patient Not Updated SuccessFully'");
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
