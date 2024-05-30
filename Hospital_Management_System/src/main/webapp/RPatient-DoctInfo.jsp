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
<style><%@ include file ="CSS/patientinfo.css"%>
#patient
{
    color:darkblue;
}
.form-popup {
    
    display: none;
    position: absolute;
    border: 3px solid #f1f1f1;
    z-index: 9;
    width: 35vw;
    height: 78vh;
    background-color: white;
    padding: 20px;
    box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
    border-radius: 10px;
  }
  .form-popup.show {
    display: block;
    width:20vw;
  }
  .form-overlay {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.5);
    z-index: 8;
  }
  .form-overlay.show {
    display: block;
  }
  
  
   

    

    #formTitle {
      text-align: center;
      margin-bottom: 30px;
      color: #007bff;
    }

    label {
      font-weight: bold;
      color: #495057;
    }

    input[type="text"],
    input[type="date"],
    input[type="time"],
    input[type="hidden"],
    select {
      width: 100%;
      padding: 10px;
      margin-bottom: 20px;
      border: 1px solid #ced4da;
      border-radius: 5px;
      box-sizing: border-box;
    }

    button {
      
      padding: 10px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .btn-primary {
      background-color: #007bff;
      color: white;
    }

    .btn-primary:hover {
      background-color: #0056b3;
    }

    .btn-secondary {
      background-color: #6c757d;
      color: white;
    }

    .btn-secondary:hover {
      background-color: #5a6268;
    }

    .row {
      display: flex;
      justify-content: space-between;
    }

    .col-md-6 {
      flex: 0 0 48%;
    }
</style>

<script type="text/javascript"> <%@ include file="JS/admin.js"%> <%@ include file="JS/validations.js"%> </script>
</head>
<body>


<div class="form-overlay" id="formOverlay" onclick="closePopup()"></div>
	<div class="container-fluid">
		<div class="row" style="height:100vh;width:100vw;">

			<div class="col-md-2 col-sm-12 sidebar">
				<%@ include file="ReceiptionistSidebarContent.jsp"%>
			</div>

			<div class="col-md-10 col-sm-12 main-content">
				
					<div class="row " >
						 <%@include file="dashBoardHeader.html" %>
					</div>
					<div class="row align-items-center"
						style="height:10vh;" id="Assigned">
						<!-- Second Row Content -->
						
					</div>
					<div class="row thirdRow">
						<!-- Third Row Content -->
						<%@ include file="patientDoct_infoTable.jsp" %>
					</div>
					<div class="row row-height-7" style="height:5.8vh;">
						<!-- Fourth Row Content -->
					</div>
				
			</div>
		</div>
	</div>
	<div id="popupForm" class="form-popup">
		 <%@ include file="scheduleAppointForm.html" %>
	</div>
	

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>	
		
		
		
		<!-- JavaScript -->

<script type="text/javascript">



  
  function showPopup(event, formTitle, button) {
	    event.preventDefault(); // Prevent the default action of the button
	    $('#formTitle').text(formTitle);
	    $('#popupForm').addClass('show');
	    $('#formOverlay').addClass('show');
	    
	    var patientId = button.value;
	    
	    // Set the value to the hidden input field
	    document.getElementById('patientId').value = patientId;
	    var staffid=document.getElementById('doctid').value;
	    document.getElementById('staffId').value = staffid;
	    

	    
	  }

  function closePopup() {
	  document.getElementById('popupForm').style.display = 'none';
	    document.getElementById('formOverlay').style.display = 'none';
  }
   
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
</body>
</html>
