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

import org.hospital.admin.model.AppointmentModel;
@WebServlet("/s")
public class ScheduleAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    AppointmentService aService=new AppointmentServiceImpl();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    response.setContentType("text/html");
	    PrintWriter out=response.getWriter();
		String patientid=request.getParameter("patientId").trim();
		
		String staffid=request.getParameter("staffId").trim();
		String date=request.getParameter("date").trim();
		String time1=request.getParameter("time1").trim();
		String time2=request.getParameter("time2").trim();
		
		System.out.println(patientid);
		System.out.println(staffid);
		System.out.println(date);
		System.out.println(time1);
		System.out.println(time2);
		
		
		AppointmentModel model = new AppointmentModel();
		model.setPatientid(Integer.parseInt(patientid));
		model.setStaffid(Integer.parseInt(staffid));
		model.setDate(date);
		model.setStartTime(time1);
		model.setEndTime(time2);
		
		boolean b=aService.isScheduleAppointment(model);
		
		System.out.println(b);
	
     
     if(b)
		{
			b=false;
			RequestDispatcher rd=request.getRequestDispatcher("patientDoct-info.jsp");
			rd.include(request, response);
          out.println("<head>");
			
			out.println("<script type='text/javaScript'>");
			out.println("function alertTest(){");
			out.println("var heading=document.getElementById('Assigned')");
			out.println("heading.innerHTML='Appointment Scheduled SuccessFully'");
			out.println("heading.style.color='green'");
			out.println("heading.style.fontSize='1.1rem'");
			out.println("heading.style.fontFamily='Inria Serif-Regular' ");
			out.println("heading.style.fontWeight='800' ");
			out.println("heading.style.letterSpacing='normal' ");
			out.println("heading.style.textAlign='center' ");
			
			out.println("setTimeout(()=>{document.getElementById('Assigned').innerHTML='' ");
			out.println("},2500)");
			
			out.println("}");
			out.println("</script>");
			out.println("</head>");
			out.println("<body onload='alertTest()'></body>");
			
			
			
			
		}
		else	
		{
			
			RequestDispatcher rd=request.getRequestDispatcher("patientDoct-info.jsp");
			rd.include(request, response);
			out.println("<head>");
			
			out.println("<script type='text/javaScript'>");
			out.println("function alertTest(){");
			out.println("var heading=document.getElementById('Assigned')");
			out.println("heading.innerHTML ='Appointment Already Booked'");
			out.println("heading.style.color='red'");
			out.println("heading.style.fontSize='1.1rem'");
			out.println("heading.style.fontFamily='Inria Serif-Regular' ");
			out.println("heading.style.fontWeight='800' ");
			out.println("heading.style.letterSpacing='normal' ");
			out.println("heading.style.textAlign='center' ");
			
			out.println("setTimeout(()=>{document.getElementById('Assigned').innerHTML='' ");
			out.println("},2500)");
			
			out.println("}");
			out.println("</script>");
			out.println("</head>");
			out.println("<body onload='alertTest()'></body>");
			
			
		}
	}

}
