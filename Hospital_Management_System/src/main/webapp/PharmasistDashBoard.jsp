<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Pharmacist Dashboard</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- Font Awesome for icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <!-- Custom CSS -->
  <style>
   <%@ include file="CSS/dashboardStyle.css"%>
   
   /* Additional CSS */
   .img-container {
     text-align: center; /* Center align the image */
     margin: 20px auto; /* Add some margin */
   }

   .img-container img {
     height:100px; /* Set the height of the image */
     width: auto; /* Ensure the width is auto to maintain aspect ratio */
     max-width: 100%; /* Ensure image is responsive */
     border-radius: 10px; /* Add rounded corners */
     box-shadow: 0 4px 8px rgba(0,0,0,0.1); /* Add shadow */
   }
  </style>
</head>
<body>

  <div class="container-fluid">
		<div class="row" style="height:100vh;width:100vw;">

			<div class="col-md-2 col-sm-12 sidebar">
				<%@ include file="PharmacistSidebar.html"%>
			</div>

			<div class="col-md-10 col-sm-12 main-content">
				
					<div class="row " >
						 <%@include file="PharmacistdashBoardHeader.html" %>
					</div>
					<div class="row align-items-center"
						style="height:10vh;">
						<!-- Second Row Content -->
						
					</div>
					<div class="row thirdRow">
						<!-- Third Row Content -->
						
					</div>
					<div class="row row-height-7" style="border: 1px solid black;height:5.8vh;">
						<!-- Fourth Row Content -->
					</div>
				
			</div>
		</div>
	</div>
  <!-- JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
 

</body>
</html>