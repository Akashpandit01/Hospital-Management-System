<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="org.hospital.admin.service.*,org.hospital.admin.model.*,java.util.*"%>


    <div class="col-md-12  appo-heading" style="overflow-y: scroll;height:33vw;">
         <div class="row">
             <div class="col-md-6">
                <h3 class="mb-4">Patient Details</h3>
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
             <th scope="col">Disease Name</th>
              
              <th scope="col">Schedule Appointment</th>            
            </tr>
          </thead>
          <tbody>           
<%
        

addPatientService pService = new addPatientServiceImpl();

           List<addPatientModel> list=pService.getPatientWithDoctor();
           int count=0;
           if(list!=null)
     	  {
     		  for(addPatientModel m:list)
     		  {
       %> 
     		  <tr>
     	      <th scope="row"><%=++count%></th>
     	       <td><%=m.getName()%></td>
     	      <td><%=m.getStaffName()%></td>
     	      <td><%=m.getDisease()%></td>
     	      
   
     	           <td><button class="btn btn-info" onclick="showPopup(event, 'Schedule Appointment',this)" value="<%=m.getPatientid()%>"  style="font-weight:400;">Appointment</button></td>
     	           <input type="hidden" id="doctid" value="<%=m.getStaffId()%> ">
     	      
     	    </tr> 
     	
     	<%    }
       }
       else
       {
          %> 
     	  <tr>
     	       <td colspan="4"><h6>All Patient doctor not Assigned</h6></td>
     	  </tr>
     	  
     <% 
         }
       
        %> 
          </tbody>
        </table>
      </div>
       