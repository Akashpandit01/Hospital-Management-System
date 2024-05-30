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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Font Awesome for icons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<!-- Custom CSS -->
<style>
<%@
include file ="CSS/dashboardStyle.css"%>
#staff
{
color:darkblue;
}
.form-group {
    margin-bottom: 0.6rem;
}
</style>

<script type="text/javascript">
      <%@ include file="JS/admin.js"%>
      <%@ include file="JS/validations.js"%>
      
      
      
  </script>
</head>
<body onload="count()">

<%!
addStaffService sService=new addStaffServiceImpl();
%>

	<div class="container-fluid">
		<div class="row" style="height:100vh;width:100vw;">

			<div class="col-md-2 col-sm-12 sidebar">
				<%@ include file="SidebarContent.html"%>


			</div>

			<div class="col-md-10 col-sm-12 main-content">
				
					<div class="row " style="">
						 <%@include file="dashBoardHeaderStaff.html" %>
					</div>
					<div class="row align-items-center"
						style="height:10vh;">
						<!-- Second Row Content -->
						<%@ include file="buttonStaff.html" %>
					</div>
					<div class="row thirdRow" >
						<!-- Third Row Content -->
						<%@ include file="staffTable.html" %>
					</div>
					<div class="row row-height-7" >
						<!-- Fourth Row Content -->
					</div>
				
			</div>
		</div>
	</div>
	<div id="popupForm" class="form-popup">
		 
           <%@ include file="addStaffForm.jsp" %>
	</div>
	<div id="successMessage" class="success-message mt-5">Submit
		Successful</div>







	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


	
</body>
</html>
