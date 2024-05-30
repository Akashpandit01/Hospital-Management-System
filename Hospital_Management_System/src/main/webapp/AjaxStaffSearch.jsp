<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@page import="org.hospital.admin.service.*,org.hospital.admin.model.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
String name=request.getParameter("str");
%>

<%!
addStaffService sService = new addStaffServiceImpl();

%>
  
         

        <table class="table mt-3">
          <thead>
            <tr>
               <th scope="col">Sr.No</th>
              <!-- <th scope="col">Staff Id</th> -->
              <th scope="col-3">Staff Name</th>
              <th scope="col">Department Name</th>
              <th scope="col">Designation</th>
              <th scope="col">Specialty</th>
              <th scope="col">Contact</th>
              
              <th scope="col">Delete</th>
              <th scope="col">Update</th>
            </tr>
          </thead>
          <tbody>
                        
<%
           
           List<StaffModel> list=sService.getAllStaffsByName(name);
           int count=0;
           if(list!=null)
     	  {
     		  for(StaffModel m:list)
     		  {
       %> 
     		  <tr>
     	      <th scope="row"><%=++count%></th>
     	      <!-- <td><%=m.getStaffId()%></td> -->
     	      <td><%=m.getStaffName()%></td>
     	      <td><%=m.getDeptName()%></td>
     	      <td><%=m.getDesignation()%></td>
     	      <td><%=m.getSpeciallty()%></td>
     	       <td><%=m.getContact()%></td>
     	      
     	      
     	      <td><a href='deleteStaff?staffid=<%=m.getStaffId()%>'><i class="fas fa-trash-alt ml-3" aria-hidden="true"></i></a></td>
     	      
             <td><a href='updStaff?sid=<%=m.getStaffId()%>&sname=<%=m.getStaffName()%>&sdeptname=<%=m.getDeptName()%>&sdesignation=<%=m.getDesignation()%>&sspecialty=<%=m.getSpeciallty()%>&scontact=<%=m.getContact()%>'><i class="fas fa-edit ml-3" aria-hidden="true"></i></a></td>
     	    </tr> 
     	
     	<%    }
       }
       else
       {
          %> 
     	  <tr>
     	       <td colspan="4"><h6>Record Not Found</h6></td>
     	  </tr>
     	  
     <% 
         }
       
        %> 
          </tbody>
        </table>
      
                
</body>
</html>