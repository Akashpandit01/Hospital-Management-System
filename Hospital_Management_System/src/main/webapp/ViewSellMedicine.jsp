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
<%@ include file="CSS/patientAdmin.css"%>
a:hover {
	text-decoration: none;
}
</style>
</head>
<body>
	<%!MedicineService mservice = new MedicineServiceImpl();%>
	<div class="sidebar">
		<div class="admin-logo  mb-4">
			<img src="images/admin2.jpeg" alt="Admin Logo"
				style="width: 80px; border-radius: 50%; height: 80px;" class="ml-4">
			<h5 class="mt-2 ml-4">Pharmacist</h5>
		</div>
		<ul class="ml-4">
			
			<li><a href="medicine.jsp" ><i
					class="fa fa-medkit mr-2"></i> Medicine</a></li>
		
			<li><a href="ViewSellMedicine.jsp" style="color: darkblue;"><i class="fas fa-user-md mr-2"></i> View Sold medicine</a></li>
			
			<li><a href="logout"><i class="fas fa-sign-out-alt mr-2 "
					style="margin-top: 9rem;"></i> Logout</a></li>
		</ul>
	</div>

	<div class="main-content">
		<div class="dashboard-header">
			<div class="row">
				<div class="col-md-6">
					<h2>Medicine</h2>
				</div>

				<div class="col-md-6 text-right">
					<div class="date-icons">

						<i class="fas fa-calendar-alt mr-5"></i>
						<!-- Calendar icon -->
						<i class="fas fa-clock mr-5"></i>
						<div id="currentDate"></div>
						<!-- Date display -->
					</div>
				</div>

			</div>
		</div>
		
		<div class="row ">
			<div class="col-md-12 mt-4 appo-heading"
				style="overflow-y: scroll; height: 450px;">
				<h3 class="mb-4">Sell Medicine Details</h3>
				<div class="tables">
				</div>
				<table class="table">
					<thead>
						<tr>
						<th scope="col">S.No</th>
							<th scope="col">Selling  id</th>
							<th scope="col">Medicine id</th>
							<th scope="col">Patientname</th>
<!-- 							<th scope="col"> Name<th> -->
<!-- 							<th scope="col"> Price</th> -->
                               <th scope="col">Name</th>
							<th scope="col">price</th>
							<th scope="col">quantity</th>
							
							
						</tr>
					</thead>
					<tbody class="scroll-patient">
						<%
						List<SellMedicineModel> list = mservice.getAllsellmedicine();
						int count = 0;
						if(list !=null)
						{
						for (SellMedicineModel model : list) {
						%>
						<tr>
							<th scope="row"><%=++count%></th>
							 <td><%=model.getSid() %>
							<td><%=model.getMid()%></td>
							<td><%=model.getPatientname()%></td>
							<td><%=model.getMedicinename()%></td>
							<td><%=model.getPrice()%></td>
							<td><%=model.getQuanity()%></td>
							

							<%-- <td>  <a href='Delete?medicineid=<%=model.getId()%>'><i class="fas fa-trash-alt ml-3" aria-hidden="true"></i></a></td>
							<td><a href='UpdMedicine?mid=<%=model.getId() %>&medicineName=<%=model.getName() %>&Price=<%=model.getPrice() %>&Manufacture=<%=model.getManufacture()%>&Expiry=<%=model.getExpiry()%>'><i class="fas fa-edit ml-3" aria-hidden="true"></i></a></td> --%>
						</tr>
						<tr>

							<%
							}
						}
						else
						{
							
						
							%>
							<tr><td><h3>Medicine Not available Empty</h3></td></tr>
							<%
						}
							%>
						
					</tbody>
				</table>
			</div>


		</div>
	</div>


	/
	<td>
		<button id="addbutton" class="btn  ml-2 bg-primary" type="button">
			<a href="addPatient.jsp" style="color: #f7f7f7;">Add Staff</a>
		</button>
	</td>/
	<!-- JavaScript -->
	<script>
		
	</script>
	

</body>
</html>