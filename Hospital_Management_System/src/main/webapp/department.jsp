<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@page import="org.hospital.admin.service.*,org.hospital.admin.model.*,java.util.*" %>
	
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- Font Awesome for icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <!-- Custom CSS -->
  <style>
   <%@ include file="CSS/patientAdmin.css"%>
   
   
  td a i:hover
  {
     text-decoration:none;
     color:black;
     
  }
   td a i
  {
     text-decoration:none;
     
  }
  a:hover 
  {
  text-decoration:none;
  }
  
  
   
  </style>
  
  
  <script type='text/javaScript'>
       
  
  function searchByDeptParamater(str1)
  {
	  let xhttp=new XMLHttpRequest();
	  xhttp.onreadystatechange=function()
	  {
		  if(this.readyState==4 && this.status==200)
			  {
			  document.getElementById("searchdata").innerHTML=this.responseText;
			  }
		  
		  
	  };
	  xhttp.open("GET","AjaxDeptSearchByName.jsp?str1="+str1,true);
	  xhttp.send();
	  
  }
  </script>
 
</head>
<body>

<%
addDeptService dService=new addDeptServiceImpl();
%>

  <div class="sidebar">
    <div class="admin-logo  mb-4">
      <img src="images/admin2.jpeg" alt="Admin Logo" style="width: 80px;border-radius: 50%;height: 80px;" class="ml-4">
      <h5 class="mt-2 ml-4">Admin</h5>
    </div>
    <ul class="ml-4">
      <li><a href="adminDashBoard.jsp"><i class="fas fa-tachometer-alt mr-2"></i> Overview</a></li>
      <li><a href="patient.jsp" ><i class="fas fa-user mr-2"></i> Patients</a></li>
      <li><a href="#"><i class="fas fa-calendar-check mr-2"></i> Appointments</a></li>
     <!--   <li><a href="#"><i class="fas fa-user-md mr-2"></i> Doctors</a></li>  -->
      <li><a href="department.jsp" style="color:darkblue;"><i class="fas fa-building mr-2"></i> Departments</a></li>
      <li><a href="staff.jsp"><i class="fas fa-users mr-2"></i> Staff</a></li>
      <li><a href="logout"><i class="fas fa-sign-out-alt mr-2 " style="margin-top:9rem;"></i> Logout</a></li>
    </ul>
  </div>

  <div class="main-content">
    <div class="dashboard-header">
      <div class="row">
        <div class="col-md-6">
          <h2>Departments</h2>
        </div>
        
         <div class="col-md-6 text-right">
        <div class="date-icons" style="color:#fff;font-weight:bold;font-size:1.1rem;">
             
          <i class="fas fa-calendar-alt mr-5"></i> <!-- Calendar icon -->
          <i class="fas fa-clock mr-5"></i> 
          <div id="currentDate"></div> <!-- Date display -->
        </div>
      </div>
        
      </div>
    </div>
   <div class="row">
       <div class="col-md-6 mt-4 input-group">
          <input type="text" class="form-control" placeholder="Search Department By Name" aria-label="Search" aria-describedby="basic-addon2" onkeyup="searchByDeptParamater(this.value)">
          <div class="input-group-append">
            <button class="btn btn-outline-primary bg-primary" type="button" style="border-radius:3px;font-weight:700;color:#f7f7f7;">Search</button></div>
       </div>
       <div class="col-md-6 mt-4 input-group">
         
            <button id="addbutton" class="btn  ml-5 bg-primary" type="button"><a href="adddept.jsp" style="color:#f7f7f7;">Add Department</a></button>
       </div>
   
   </div>
    <div class="row " >
      <div class="col-md-12 mt-4 appo-heading" style="overflow-y: scroll;height: 450px;">
        <div class="row">
             <div class="col-md-6">
                <h3 class="mb-4">Department Details</h3>
             </div>
             <div class="col-md-6">
                  <h4 class="mb-4" id="response"></h4>
             </div>
         </div>
        <table class="table" id='searchdata'>
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
           List<DepartmentModel> list=dService.getAllDepartments();
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
      </div>
          
          
           
              
          
          
      
    </div>
  </div>

<script type='text/javaScript'>
var today = new Date();
var option = today.toLocaleString();
document.getElementById('currentDate').innerHTML = option;

// Update every second
setInterval(function() {
    today = new Date();
    option = today.toLocaleString();
    document.getElementById('currentDate').innerHTML = option;
}, 1000);

</script>

  <script src="JS/admin.js"></script>

</body>
</html>
