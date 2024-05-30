package org.hospital.admin.controller;

import jakarta.servlet.RequestDispatcher;

import jakarta.servlet.ServletException;

import org.hospital.admin.model.RegisterModel;
import org.hospital.admin.service.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/r")
public class registerServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    register rService=new registerImpl();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("tetx/html");
		PrintWriter out=response.getWriter();
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String role=request.getParameter("role");
		RegisterModel model=new RegisterModel(username,password,role);
		boolean b=rService.isRegister(model);
		
		if(b)
		{
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
			out.println("<head>");
			
			out.println("<script type='text/javaScript'>");
			out.println("function alertTest(){");
			out.println("var heading=document.getElementById('response')");
			out.println("heading.innerHTML='Register SuccessFully'");
			out.println("heading.style.color='green'");
			out.println("heading.style.fontSize='1.1rem'");
			out.println("heading.style.fontFamily='Inria Serif-Regular' ");
			out.println("heading.style.fontWeight='800' ");
			out.println("heading.style.letterSpacing='normal' ");
			out.println("heading.style.textAlign='center' ");
			
			out.println("setTimeout(()=>{document.getElementById('response').innerHTML='' ");
			out.println("},3500)");
			
			out.println("}");
			out.println("</script>");
			out.println("</head>");
			out.println("<body onload='alertTest()'>");
			
			out.println("</body>");
			
			
			
			
		}
		
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
            out.println("<head>");
			
			out.println("<script type='text/javaScript'>");
			out.println("function alertTest(){");
			out.println("var heading=document.getElementById('response')");
			out.println("heading.innerHTML='Not Register SuccessFully'");
			out.println("heading.style.color='green'");
			out.println("heading.style.fontSize='1.1rem'");
			out.println("heading.style.fontFamily='Inria Serif-Regular' ");
			out.println("heading.style.fontWeight='800' ");
			out.println("heading.style.letterSpacing='normal' ");
			out.println("heading.style.textAlign='center' ");
			
			out.println("setTimeout(()=>{document.getElementById('response').innerHTML='' ");
			out.println("},3500)");
			
			out.println("}");
			out.println("</script>");
			out.println("</head>");
			out.println("<body onload='alertTest()'>");
			
			out.println("</body>");
		
		}
		
	}

	

}
