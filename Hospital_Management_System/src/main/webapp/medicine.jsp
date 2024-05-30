<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page
	import="org.hospital.admin.service.*,org.hospital.admin.repository.*,java.util.*,org.hospital.admin.model.*"%>
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
.form-popup {
      width: 31%;
      height: 72vh;
      background-color: #68b2f8;
      position: absolute;
      z-index: 9999;
      border: 1px solid #ccc;
      right: 5vw; /* Align to the right side */
      top: 20vh; /* Adjust position */
      padding: 20px;
      display: none;
      border-radius: 8px;
}
.form-popup.show {
      display: block;
}
</style>
<script type="text/javascript">
	function validate(str) {
		var flag = false;
		var spanElement;
		for (var i = 0; i < str.length; i++) {
			var ascii = str.charCodeAt(i);
			if (!((ascii >= 48 && ascii <= 57))) {
				flag = true;
				break;
			}
		}
		if (flag) {
			spanElement = document.getElementById("s");
			spanElement.innerHTML = "Invalid Price";
			spanElement.style.color = "red";
			spanElement.style.backgroundColor = "white";
		} else {
			spanElement = document.getElementById("s");
			spanElement.innerHTML = "";
			spanElement.style.color = "white";
			spanElement.style.backgroundColor = "white";
		}
	}
	// JavaScript to display sell medicine popup form when "Sell Medicine" button is clicked
    /* document.getElementById("selmedicine").addEventListener("click", function(event) {
        document.getElementById("sellMedicinePopup").style.display = "block";
        event.stopPropagation();
    });
	
    / JavaScript to hide sell medicine popup when clicking outside
    document.addEventListener("click", function(event) {
        var sellMedicinePopup = document.getElementById("sellMedicinePopup");
        if (event.target !== sellMedicinePopup && !sellMedicinePopup.contains(event.target)) {
            sellMedicinePopup.style.display = "none";
        }
    }); */
</script>
</head>
<body>
	<%!MedicineService mservice = new MedicineServiceImpl();%>
	<div class="sidebar">
		<div class="admin-logo mb-4">
			<img src="images/admin2.jpeg" alt="Admin Logo"
				style="width: 80px; border-radius: 50%; height: 80px;" class="ml-4">
			<h5 class="mt-2 ml-4">Pharmacist</h5>
		</div>
		<ul class="ml-4">
			
			<li><a href="medicine.jsp" style="color: darkblue;"><i class="fa fa-medkit mr-2"></i> Medicine</a></li>
			
			<li><a href="ViewSellMedicine.jsp"><i class="fas fa-user-md mr-2"></i> View sold Medicine</a></li>
			<li><a href="logout"><i class="fas fa-sign-out-alt mr-2" style="margin-top: 9rem;"></i> Logout</a></li>
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
		<div class="row">
			<div class="col-md-6 mt-4 input-group">
				<input type="text" class="form-control" placeholder="Search Medicine" aria-label="Search" aria-describedby="basic-addon2">
				<div class="input-group-append">
					<button class="btn btn-outline-primary" type="button" style="border-radius: 3px; font-weight: 700; background: #0275d8; color: #f7f7f7;">Search</button>
				</div>
			</div>
			<div class="col-md-6 mt-4 input-group">
				<button id="addFilterBtn" class="btn ml-5" type="button" style="background: #0275d8;">
					<span style="color: #f7f7f7;">Add Medicine</span>
				</button>
				 <button id="selmedicine" class="btn  ml-5" type="button" style="background: #0275d8;">
					<a href="Sellmedicine.jsp" style="color: #f7f7f7;">Sell Medicine</a>
				</button>
			</div>
			<h5 id="responses" class="mt-5"></h5>
		</div>
		<div class="row">
			<div class="col-md-12 mt-4 appo-heading" style="overflow-y: scroll; height: 450px;">
				<h3 class="mb-4">Medicine Details</h3>
				<div class="tables"></div>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Medicine id</th>
							<th scope="col">Medicine Name</th>
							<th scope="col-3">Price</th>
							<th scope="col">Manufacturer Date</th>
							<th scope="col">Expiry Date</th>
							<th scope="col">Delete</th>
							<th scope="col">Update</th>
						</tr>
					</thead>
					<tbody class="scroll-patient">
						<%
						List<MedicineModel> list = mservice.getAllmedicine();
						int count = 0;
						if (list != null) {
							for (MedicineModel model : list) {
						%>
						<tr>
							<th scope="row"><%=++count%></th>
							<td><%=model.getName()%></td>
							<td><%=model.getPrice()%></td>
							<td><%=model.getManufacture()%></td>
							<td><%=model.getExpiry()%></td>
							<td><a href='Delete?medicineid=<%=model.getId()%>'><i class="fas fa-trash-alt ml-3" aria-hidden="true"></i></a></td>
							<td><a href='UpdMedicine?mid=<%=model.getId()%>&medicineName=<%=model.getName()%>&Price=<%=model.getPrice()%>&Manufacture=<%=model.getManufacture()%>&Expiry=<%=model.getExpiry()%>'><i class="fas fa-edit ml-3" aria-hidden="true"></i></a></td>
						</tr>
						<tr>
						<%
							}
						} else {
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

	<!-- Popup Form -->
	<div id="popupForm" class="form-popup">
		<h2 style="color: #093b6a; font-family: 'Times New Roman', Times, serif;">Add New Medicine</h2>
		<form name='frm' method='POST' action='newmedicine'>
			<div class="form-group">
				<label for="medicineName">Medicine Name</label>
				<input type="text" class="form-control" id="medicineName" name="medicineName" placeholder="Enter Medicine Name" required>
			</div>
			<div class="form-group">
				<label for="Price">Price</label>
				<input type="text" class="form-control" id="Price" name="Price" placeholder="Enter Price" onkeyup='validate(this.value)' required>
				<span id="s"></span>
			</div>
			<div class="form-group">
				<label for="Manufacture">Manufacture Date</label>
				<input type="date" class="form-control" id="Manufacture" name="Manufacture" placeholder="Enter Year-Month-Date" required>
			</div>
			<div class="form-group">
				<label for="Expiry">Expiry Date</label>
				<input type="date" class="form-control" id="Expiry" name="Expiry" placeholder="Enter Year-Month-Date" required>
			</div>
			<button type="submit" name="s" class="btn btn-primary">Submit</button>
		</form>
	</div>

	<!-- JavaScript -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		// JavaScript to display popup form when "Add Medicine" button is clicked
		document.getElementById("addFilterBtn").addEventListener("click", function(event) {
			document.getElementById("popupForm").classList.add("show");
			event.stopPropagation(); // Prevent click event from propagating to the document body
		});
		
		document.getElementById("selmedicine").addEventListener("click", function(event) {
			document.getElementById("popupFormm").classList.add("show");
			event.stopPropagation(); // Prevent click event from propagating to the document body
		});

		// JavaScript to hide popup when clicking outside
		document.addEventListener("click", function(event) {
			var popupForm = document.getElementById("popupForm");
			if (event.target !== popupForm && !popupForm.contains(event.target)) {
				popupForm.classList.remove("show");
			}
		});
		
		
	</script>
	<script type="text/javascript">
    // JavaScript to display sell medicine popup form when "Sell Medicine" button is clicked
    document.getElementById("medicineInputs").addEventListener("click", function(event) {
        document.getElementById("sellMedicinePopup").style.display = "block";
        event.stopPropagation(); // Prevent click event from propagating to the document body
    });
    
    // JavaScript to hide sell medicine popup when clicking outside
    document.addEventListener("click", function(event) {
        var sellMedicinePopup = document.getElementById("sellMedicinePopup");
        if (event.target !== sellMedicinePopup && !sellMedicinePopup.contains(event.target)) {
            sellMedicinePopup.style.display = "none";
        }
    });
</script>
	
</body>
</html>
