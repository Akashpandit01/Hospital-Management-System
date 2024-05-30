<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
  <%@ include file="CSS/AddmedicineForm.css"%>
.container {
	max-width: 900px;
	margin: auto;
	margin-top: 50px;
	
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	
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
 .img
    {
      border-radius: 5%;
      height: 500px;
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
				style="width: 80px; border-radius: 50%; height: 80px;" class="ml-4">
			<h5 class="mt-2 ml-4">Pharmacist</h5>
		</div>
          
          <ul class="ml-4">
     
      <li><a href="medicine.jsp" style="color:darkblue;"><i class="fa fa-medkit mr-2"></i> Medicine</a></li>
    <li><a href="ViewSellMedicine.jsp"><i class="fas fa-user-md mr-2"></i> View sold Medicine</a></li>
      <li><a href="logout"><i class="fas fa-sign-out-alt mr-2" style="margin-top:9rem;"></i> Logout</a></li>
    </ul>
			</div>
			
			<div class="col-md-10 col-sm-12-mt-5 main-contents">
			
			     <div class="container bg-light">
			        <div class="row">
			        
			         
			         
			         <div class="col-md-8 col-sm-12 ml-15 sub" id="updmade">

							<h2
								style="color: #093b6a; font-family: 'Times New Roman', Times, serif;">Update Medicine</h2>
							

</body>
</html>