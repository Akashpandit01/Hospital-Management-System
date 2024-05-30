<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Font Awesome for icons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<!-- Custom CSS  -->
<style>
  <%@ include file="CSS/addpatientform.css"%>
.container {
	max-width: 900px;
	margin: auto;
	margin-top: 50px;
	
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	animation: fadeIn 2s ease; 
	
}

@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translateY(-20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}
h2 {
	text-align: center;
	margin-bottom: 30px;
}

label {
	font-weight: bold;
}

input[type="text"], select {
	width: 90%;
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #ced4da;
	border-radius: 5px;
	box-sizing: border-box;
}

button[type="submit"] {
	width: 90%;
	padding: 10px;
	background-color: #007bff;
	border: none;
	border-radius: 5px;
	color: white;
	cursor: pointer;
}

button[type="submit"]:hover {
	background-color: #0056b3;
}




</style>
</head>
<body>

   <div class="container-fluid  ">
        <div class="row">
          
          <div class="col-md-2 col-sm-12 sidebar">
				
					<div class="admin-logo mb-4">
						<img src="images/admin2.jpeg" alt="Admin Logo"
							style="width: 80px; border-radius: 50%; height: 80px;"
							class="ml-4">
						<h5 class="mt-2 ml-4">Admin</h5>
					</div>
					<ul class="ml-4">
						<li><a href="#"><i class="fas fa-tachometer-alt mr-2"></i>
								Overview</a></li>
						<li><a href="patient.jsp" ><i
								class="fas fa-user mr-2"></i> Patients</a></li>
						<li><a href="#"><i class="fas fa-calendar-check mr-2"></i>
								Appointments</a></li>
						<li><a href="#"><i class="fas fa-user-md mr-2"></i>
								Doctors</a></li>
						<li><a href="department.jsp"><i class="fas fa-building mr-2"></i>
								Departments</a></li>
						<li><a href="staff.jsp" style="color: darkblue;"><i class="fas fa-users mr-2"></i> Staff</a></li>
						<li><a href="logout"><i class="fas fa-sign-out-alt mr-2 "
								style="margin-top: 9rem;"></i> Logout</a></li>
					</ul>
				


			</div>
			
			<div class="col-md-10 col-sm-12-mt-5 main-contents">
			
			     <div class="container bg-light">
			        <div class="row">
			        
			         <div class="col-md-6 col-sm-12">
			             
			             <img src="images/patientRegister.jpg" alt="Patient Registration"
						class="img-fluid mt-5">
						
						<h5 id="response" class="mt-5"></h5>
			         
			         
			         </div>
			         
			         <div class="col-md-6 col-sm-12 sub" id='subcontent'>

							


	
	



</body>
</html>
