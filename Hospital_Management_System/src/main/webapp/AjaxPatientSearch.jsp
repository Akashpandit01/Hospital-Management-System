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
addPatientService pService = new addPatientServiceImpl();

%>
  

 
      
        
        
        <table class="table mt-4">
          <thead>
            <tr>
               <th scope="col">Sr.No</th>
              <th scope="col">Patient Id</th>
              <th scope="col-3">Patient Name</th>
              <th scope="col">Diseasename</th>
             
              <th scope="col">Gender</th>
              <th scope="col">Contact</th>
              <th scope="col">Delete</th>
              <th scope="col">Update</th>
            </tr>
          </thead>
          <tbody>           
<%
        
           List<addPatientModel> list=pService.getAllPatientsByName(name);
           int count=0;
           if(list!=null)
     	  {
     		  for(addPatientModel m:list)
     		  {
       %> 
     		  <tr>
     	      <th scope="row"><%=++count%></th>
     	      <td><%=m.getPatientid()%></td>
     	      <td><%=m.getName()%></td>
     	      <td><%=m.getDisease()%></td>
     	      <td><%=m.getGender()%></td>
     	      <td><%=m.getContact()%></td>
     	      
     	      
     	      <td><a href='deletePatient?patientid=<%=m.getPatientid()%>'><i class="fas fa-trash-alt ml-3" aria-hidden="true"></i></a></td>
     	      <td><a href='updPatient?pid=<%=m.getPatientid()%>&pname=<%=m.getName()%>&pdisease=<%=m.getDisease()%>&pgender=<%=m.getGender()%>&pcontact=<%=m.getContact()%>&padress=<%=m.getAdress()%>'><i class="fas fa-edit ml-3" aria-hidden="true"></i></a></td>
             
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