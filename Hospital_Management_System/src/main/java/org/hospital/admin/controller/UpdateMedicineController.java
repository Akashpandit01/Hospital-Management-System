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
import org.hospital.admin.service.MedicineServiceImpl;
@WebServlet("/UpdMedicine")
public class UpdateMedicineController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MedicineServiceImpl mservice=new  MedicineServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int mid=Integer.parseInt(request.getParameter("mid"));
//		System.out.println(mid);
		String medname=request.getParameter("medicineName");
	
		String price=request.getParameter("Price");
		String manufact=request.getParameter("Manufacture");
		String Expiry=request.getParameter("Expiry");
		RequestDispatcher r=request.getRequestDispatcher("updmedicine.jsp");
		r.include(request, response);
		 out.println("<div id='updmed'>");
		 out.println(" <form name='frm' action='FinalMedicineUpdate' method='Post' class='formarea'>");
		 out.println("<label>Medicine Name</label>");
		 
		 out.println("<input type='hidden' name='mid'value='"+mid+"' class='control'/><br><br>");
		 out.println("<input type='text' name='medicineName'value='"+medname+"' class='control'/><br>");
		 out.println("<label>Price</label><br>");
		 out.println("<input type='text' name='Price'value='"+price+"' class='control'/><br>");
		 out.println("<label>Manufacture Date</label>");
		 out.println("<input type='text' name='Manufacture'value='"+manufact+"' class='control'/><br>");
		 out.println("<label>Expiry Date</label>");
		 out.println("<input type='text' name='Expiry'value='"+Expiry+"' class='control'/><br>");
		 
		 out.println("<input type='submit' name='s'value='Update Medicine' class='control  abcd 'oncliclick='alertTest()'/><br><br>");
		 
		 out.println("</div></div></div></div></div></div></div>");
		 
		 out.println("<style>");
	        out.println(".abcd {");
	        out.println(" width: 90%;");
	        out.println(" padding: 10px;");
	        out.println(" background-color: #007bff;");
	        out.println("  border: none;");
	        out.println(" border-radius: 5px;");
	        out.println("color: white;");
	        out.println("  cursor: pointer;");
	        out.println("}");
	        
	        
	      out.println(".abcd:hover {");
	      out.println("background-color: #0056b3;");
	      out.println("}");
	      
	        out.println("</style>");
	        
	        
	        
	        
	        MedicineModel model=new MedicineModel();
//	       MedicineService mservice=new medicineServiceimpl();
	      //  boolean b=true;
	     //  b=mservice.isUpadateMedicine(model);
//	       System.out.println(b);
//	       if(b)
//			 {
//				 RequestDispatcher rd=request.getRequestDispatcher("medicine.jsp");
////				 rd.include(request, response);
//	    	   rd.forward(request, response);
//				out.println("<script type='text/javaScript'>");
//				out.println(" function alertTest(){");
//				out.println("let heading =document.getElementById('response')");
//				out.println("heading.innerHTML='Medicine Update Successfully'");
//				out.println("heading.style.color='green'");
//				out.println("setTimeout(()=>{document.getElementById('response').innerHTML='' ");
//				out.println("},4000)");
//				out.println("}");
//				out.println("</script>");
//				out.println("<body onload='alertTest()'>");
//				out.println("</body>");
//			 }else {
////				 RequestDispatcher rd=request.getRequestDispatcher("medicine.jsp");
////				 rd.forword(request, response);
////				 rd.forward(request, response);
//				out.println("<script type='text/javaScript'>");
//				out.println(" function alertTest(){");
//				out.println("let heading =document.getElementById('response')");
//				out.println("heading.innerHTML='Medicine Not Update Successfully'");
//				out.println("heading.style.color='red'");
//				out.println("setTimeout(()=>{document.getElementById('response').innerHTML='' ");
//				out.println("},4000)");
//				out.println("}");
//				out.println("</script>");
//				out.println("<body>");
//				out.println("</body>");		
//				}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
