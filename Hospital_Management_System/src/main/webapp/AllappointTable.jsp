<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="org.hospital.admin.service.*,org.hospital.admin.model.*,java.util.*"%>


    <div class="col-md-12  appo-heading" style="overflow-y: scroll;height:33vw;">
         <div class="row">
             <div class="col-md-6">
                <h3 class="mb-4">Appointment Details</h3>
             </div>
             <div class="col-md-6">
                  <h4 class="mb-4" id="response"></h4>
             </div>
         </div>
        <table class="table" id='searchdata'>
          <thead>
            <tr>
               <th scope="col">Sr.No</th>
              <th scope="col">Patient Name</th>
              <th scope="col-3">Doctor Name</th>          
             <th scope="col">Date</th>
             <th scope="col">Start Time</th>
             <th scope="col">End Time</th>
              <th scope="col">Cancel</th>
              
                       
            </tr>
          </thead>
          <tbody>           
<%
        

AppointmentService pService = new AppointmentServiceImpl();

           List<AppointmentModel> list=pService.getAllAppointments();
           int count=0;
           if(list!=null)
     	  {
     		  for(AppointmentModel m:list)
     		  {
       %> 
     		  <tr>
     	      <th scope="row"><%=++count%></th>
     	       <td><%=m.getPatientName()%></td>
     	      <td><%=m.getStaffName()%></td>
     	      <td><%=m.getDate()%></td>
     	      <td><%=m.getStartTime()%></td>
     	      <td><%=m.getEndTime()%></td>
     	      
     	      
   
     	           <td><a href='c?appointid=<%=m.getAppointid()%>&endtime=<%=m.getEndTime()%>'><i class="fa fa-times ml-3" aria-hidden="true"></i></a></td>
     	           
     	      
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
      </div>
       