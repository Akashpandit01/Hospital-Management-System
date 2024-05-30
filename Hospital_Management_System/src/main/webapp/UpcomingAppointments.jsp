<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="org.hospital.admin.service.*,org.hospital.admin.model.*,java.util.*"%>


    
        <table class="table"  style="width:50%;">
          <thead>
            <tr>
              
              <th scope="col">Patient</th>
              <th scope="col">Doctor</th>          
             <th scope="col">Date</th>
             <th scope="col">Time</th>
              <th scope="col">Cancel</th>          
            </tr>
          </thead>
          <tbody>           
<%
        

AppointmentService zService = new AppointmentServiceImpl();

           List<AppointmentModel> list=zService.getPendingAppointments();
           int count=0;
           if(list!=null)
     	  {
     		  for(AppointmentModel m:list)
     		  {
       %> 
     		  <tr>
     	     
     	       <td><%=m.getPatientName()%></td>
     	      <td><%=m.getStaffName()%></td>
     	      <td><%=m.getDate()%></td>
     	      <td><%=m.getStartTime()%></td>
     	      
     	         
     	       <td><a href='c?appointid=<%=m.getAppointid()%>'><i class="fa fa-close ml-3" aria-hidden="true"></i></a></td>
     	    </tr> 
     	
     	<%    }
       }
       else
       {
          %> 
     	  <tr>
     	       <td colspan="4"><h6>Appointment Not Available Empty</h6></td>
     	  </tr>
     	  
     <% 
         }
       
        %> 
          </tbody>
        </table>
      
       