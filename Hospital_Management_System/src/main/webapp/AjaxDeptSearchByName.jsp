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
String name=request.getParameter("str1");
%>

<%!
addDeptService dService = new addDeptServiceImpl();

%>
  
         

        
        <table class="table">
          <thead>
            <tr>
               <th scope="col">Sr.No</th>
              <th scope="col-3">Department Name</th>
              <th scope="col">Default Charges</th>
              <th scope="col">Delete</th>
              <th scope="col">Update</th>
            </tr>
          </thead>
          <tbody>                          
<%
           List<DepartmentModel> list=dService.getAllDepartmentsSearch(name);
           int count=0;
           if(list!=null)
     	  {
     		  for(DepartmentModel m:list)
     		  {
       %> 
     		  <tr>
     	      <th scope="row"><%=++count%></th>
     	      <td><%=m.getDeptName()%></td>
     	      <td><%=m.getCharges()%></td>
     	      <td><a href='deleteDept?deptid=<%=m.getDeptId()%>'><i class="fas fa-trash-alt ml-3" aria-hidden="true"></i></a></td>
     	      <td><a href='updDept?deptId=<%=m.getDeptId()%>&deptName=<%=m.getDeptName()%>&charges=<%=m.getCharges()%>'><i class="fas fa-edit ml-3" aria-hidden="true"></i></a></td>
     	    </tr> 
     	
     	<%    }
       }
       else
       {
          %> 
     	  <tr>
     	       <td colspan="4"><h6>Department Not Available Empty</h6></td>
     	  </tr>
     	  
     <% 
         }
       
        %>
          </tbody>
        </table>
      
</body>
</html>