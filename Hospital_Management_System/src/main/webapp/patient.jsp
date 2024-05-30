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
  
  
  
  </style>
  
  <script type='text/javaScript'>
       
  function searchByParamater(str)
  {
	  let xhttp=new XMLHttpRequest();
	  xhttp.onreadystatechange=function()
	  {
		  if(this.readyState==4 && this.status==200)
			  {
			  document.getElementById("searchdata").innerHTML=this.responseText;
			  }
	  
	  };
	  xhttp.open("GET","AjaxPatientSearch.jsp?str="+str,true);
	  xhttp.send();
	  
  }
  
  </script>
</head>
<body>
<%!
addPatientService pService = new addPatientServiceImpl();
%>
  <div class="sidebar">
    <div class="admin-logo  mb-4">
      <img src="images/admin2.jpeg" alt="Admin Logo" style="width: 80px;border-radius: 50%;height: 80px;" class="ml-4">
      <h5 class="mt-2 ml-4">Admin</h5>
    </div>
    <ul class="ml-4">
      <li><a href="adminDashBoard.jsp"><i class="fas fa-tachometer-alt mr-2"></i> Overview</a></li>
      <li><a href="patient.jsp" style="color:darkblue;"><i class="fas fa-user mr-2"></i> Patients</a></li>
      <li><a href="#"><i class="fas fa-calendar-check mr-2"></i> Appointments</a></li>
     <!--   <li><a href="#"><i class="fas fa-user-md mr-2"></i> Doctors</a></li>  -->
      <li><a href="department.jsp"><i class="fas fa-building mr-2"></i> Departments</a></li>
      <li><a href="staff.jsp"><i class="fas fa-users mr-2"></i> Staff</a></li>
      <li><a href="logout"><i class="fas fa-sign-out-alt mr-2 " style="margin-top:9rem;"></i> Logout</a></li>
    </ul>
  </div>

  <div class="main-content">
    <div class="dashboard-header">
      <div class="row">
        <div class="col-md-6">
          <h2>Patients</h2>
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
     <div class="col-md-6">
     
     </div>
     
     <div class="col-md-6">
         <div class="row">
     
             
       <div class="col-md-4 mt-4 input-group">
         
            <button id="addFilterBtn" class="btn  ml-5" type="button" style="background:#0275d8;"><a style="color:#f7f7f7;"><i class="fas fa-plus"></i> Add Patient</a></button>
       </div>
       
       
       <div class="col-md-2 mt-4 input-group">
         
            <div class="dropdown">
								<a class="btn btn-secondary dropdown-toggle mr-2 sub" href="#"
									role="button" id="dropdownMenuLink" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> <i
									class="fas fa-filter"></i> Filter
								</a>

								<ul class="dropdown-menu sub1"
									aria-labelledby="dropdownMenuLink">
									<li><a class="dropdown-item" href="#">Action</a></li>
									<li><a class="dropdown-item" href="#">Another action</a></li>
									<li><a class="dropdown-item" href="#">Something </a></li>
								</ul>
							</div>
       </div>
       
       
       <div class="col-md-6 mt-4 input-group">
          <input type="text" class="form-control" placeholder="Search Patient By Name" aria-label="Search" aria-describedby="basic-addon2" onkeyup="searchByParamater(this.value)">
          <div class="input-group-append">
            <button class="btn btn-outline-primary" type="button" style="border-radius:3px;font-weight:700;background:#0275d8;color:#f7f7f7;">Search</button></div>
       </div>
       
       
       
         </div>
         
     </div>
       
   
   </div>
    <div class="row "  >
      <div class="col-md-12 mt-4 appo-heading" style="overflow-y: scroll;height: 450px;">
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
        
           List<addPatientModel> list=pService.getAllPatients();
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
     	       <td colspan="4"><h5>Patient Not Available Empty</h5></td>
     	  </tr>
     	  
     <% 
         }
       
        %> 
          </tbody>
        </table>
      </div>
          
      
    </div>
  </div>
 
<div id="popupForm" class="form-popup">
		<form id="submitForm">
			<div class="form-group">
				<label for="name">Name:</label> <input type="text"
					class="form-control" id="name" name="name" required>
			</div>
			<div class="form-group">
				<label for="disease">Disease:</label> <input type="text"
					class="form-control" id="disease" name="disease" required>
			</div>
			<div class="form-group">
				<label for="location">Location:</label> <input type="text"
					class="form-control" id="location" name="location" required>
			</div>
			<div class="form-group">
				<label for="contact">Contact:</label> <input type="text"
					class="form-control" id="contact" name="contact" required>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
	<div id="successMessage" class="success-message">Submit
		Successful</div>







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



//JavaScript to display popup form when "Add Filter" button is clicked
document.getElementById("addFilterBtn").addEventListener("click", function(event) {
  document.getElementById("popupForm").classList.add("show");
  event.stopPropagation(); // Prevent click event from propagating to the document body
});

// JavaScript to handle form submission
document.getElementById("submitForm").addEventListener("submit", function(event) {
  event.preventDefault(); // Prevent default form submission
  // Simulate form submission (in real-world, this should be an AJAX request)
  setTimeout(function() {
    document.getElementById("successMessage").style.display = "block";
    document.getElementById("popupForm").classList.remove("show");
    // Hide success message after 3 seconds
    setTimeout(function() {
      document.getElementById("successMessage").style.display = "none";
    }, 3000);
  }, 1000); // Simulating a delay
});

// JavaScript to hide popup when clicking outside
document.addEventListener("click", function(event) {
  var popupForm = document.getElementById("popupForm");
  if (event.target !== popupForm && !popupForm.contains(event.target)) {
    popupForm.classList.remove("show");
  }
});
</script>
   
  <script src="JS/admin.js"></script>

</body>
</html>
