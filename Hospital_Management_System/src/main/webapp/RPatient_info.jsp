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
      
      }
      
      
  .form-popup {
    
    display: none;
    position: absolute;
    border: 3px solid #f1f1f1;
    z-index: 9;
    width: 30vw;
    height: 78vh;
    background-color: white;
    padding: 20px;
    box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
    border-radius: 10px;
  }
  .form-popup.show {
    display: block;
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
</style>


<script type="text/javascript"> <%@ include file="JS/patient.js"%> <%@ include file="JS/validations.js"%> </script>
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
						<div class="col-md-12  appo-heading" style="overflow-y: scroll;height:33vw;">
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
              <th scope="col">Assign Doctor</th>
              
              
            </tr>
          </thead>
          <tbody>           
<%
            addPatientService pService = new addPatientServiceImpl();
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
     	      <td><button class="btn btn-info" onclick="showPopup(event, 'Select Doctor',this)" value="<%=m.getPatientid()%>"  style="font-weight:400;">Assign</button></td>
             
     	    </tr> 
     	
     	<%    }
       }
       else
       {
          %> 
     	  <tr>
     	       <td colspan="4"><h5>Patient Not Available</h5></td>
     	  </tr>
     	  
     <% 
         }
       
        %> 
          </tbody>
        </table>
      </div>
       
					</div>
					<div class="row row-height-7" style="border: 1px solid black;height:5.8vh;">
						<!-- Fourth Row Content -->
					</div>				
			</div>
		</div>
	</div>
	<!-- Overlay -->


<!-- Form Popup -->
<div class="form-popup" id="popupForm">
   <%@include file="assignDoctForm.jsp" %>
</div>
	

	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>	
		
		
		
<!-- JavaScript -->

<script type="text/javascript">
$(document).ready(function() {
    $('#inputForm').on('submit', function(event) {
        event.preventDefault(); // Prevent the default form submission behavior

        // Collect form data
        var formData = $(this).serialize(); // Serialize the form data
        
        // You can perform any additional validation or processing here
        
        // Example: Send form data via AJAX
        $.ajax({
            url: $(this).attr('action'), // Get the form's action URL
            type: $(this).attr('method'), // Get the form's method (POST/GET)
            data: formData, // Pass the serialized form data
            success: function(response) {
                // Handle success response if needed
                console.log(response);
                closePopup(); // Close the popup after successful submission
            },
            error: function(xhr, status, error) {
                // Handle errors if any
                console.error(xhr.responseText);
            }
        });
    });
});


  
  function showPopup(event, formTitle, button) {
	    event.preventDefault(); // Prevent the default action of the button
	    $('#formTitle').text(formTitle);
	    $('#popupForm').addClass('show');
	    $('#formOverlay').addClass('show');
	    
	    var patientId = button.value;
	    
	    // Set the value to the hidden input field
	    document.getElementById('patientId').value = patientId;

	    // Now you can proceed to show the form with the doctor names
	    // For demonstration, let's alert the patient ID
	   

	    // This could involve AJAX to fetch the doctor names and populate the select tag
	    // You can add your AJAX call here
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
