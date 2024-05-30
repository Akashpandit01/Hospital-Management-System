<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="org.hospital.admin.service.*,org.hospital.admin.model.*,java.util.*"%>
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
<style><%@ include file ="CSS/prescerpDashStyle.css"%>

#patient
{
    color:darkblue;
}
</style>

<script type="text/javascript">  <%@ include file="JS/validations.js"%> </script>
</head>
<body>

<%!
addPatientService pService = new addPatientServiceImpl();
%>

	<div class="container-fluid">
		<div class="row" style="height:100vh;width:100vw;">

			<div class="col-md-2 col-sm-12 sidebar">
				<%@ include file="SidebarContent.html"%>
			</div>

			<div class="col-md-10 col-sm-12 main-content">
				
					   <%@ include file="doctCompleteAppoint.jsp"%> 

				
			</div>
		</div>
	</div>
	<div id="popupForm" class="form-popup">
		 
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
