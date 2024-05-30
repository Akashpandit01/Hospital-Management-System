package org.hospital.admin.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.hospital.admin.model.MedicineModel;
import org.hospital.admin.service.*;
@WebServlet("/newmedicine")
public class medicinecontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MedicineService mservice=new  MedicineServiceImpl();
   

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String medicinename=request.getParameter("medicineName");
		String  price=request.getParameter("Price");
		String manufacture=request.getParameter("Manufacture");
		String expiry=request.getParameter("Expiry");
		System.out.println("medicinename="+medicinename+"price="+price+"manufacture="+manufacture+"ex="+expiry);
		MedicineModel model=new MedicineModel();
		   model.setName(medicinename);
		   model.setPrice(price);
		   model.setManufacture(manufacture);
		   model.setExpiry(expiry);
		 boolean flag=false;
		 boolean b=mservice.isAddMedicine(model);
		 if(b)
		 {
			 RequestDispatcher rd=request.getRequestDispatcher("medicine.jsp");
			 rd.include(request, response);
			out.println("<script type='text/javaScript'>");
			out.println(" function alertTest(){");
			out.println("let heading =document.getElementById('responses')");
			out.println("heading.innerHTML='Medicine Added Successfully'");
			out.println("heading.style.color='green'");
			out.println("setTimeout(()=>{document.getElementById('response').innerHTML='' ");
			out.println("},4000)");
			out.println("}");
			out.println("</script>");
			out.println("<body onload='alertTest()'>");
			out.println("</body>");
		 }else {
			 RequestDispatcher rd=request.getRequestDispatcher("medicine.jsp");
			 rd.include(request, response);
			out.println("<script type='text/javaScript'>");
			out.println(" function alertTest(){");
			out.println("let heading =document.getElementById('responses')");
			out.println("heading.innerHTML='Medicine Not Added Successfully'");
			out.println("heading.style.color='red'");
			out.println("setTimeout(()=>{document.getElementById('response').innerHTML='' ");
			out.println("},4000)");
			out.println("}");
			out.println("</script>");
			out.println("<body onload='alertTest()'>");
			out.println("</body>");		
			}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
