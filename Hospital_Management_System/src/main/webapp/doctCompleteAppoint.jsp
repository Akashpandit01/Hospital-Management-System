<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.hospital.admin.service.*,org.hospital.admin.model.*,java.util.*"%>
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
    <%@ include file="CSS/prescerpDashStyle.css"%>
    #patient {
        color: darkblue;
    }
    .popup-form-container {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.5);
        z-index: 999;
    }
    
    
    
</style>
</head>
<body>

<%
AppointmentService pService = new AppointmentServiceImpl();
String doctName=(String)session.getAttribute("uname");
List<AppointmentModel> list=pService.getComplDoctAppoint(doctName);
int count=0;
if(list!=null) {
    
%> 
<table class="table" style="margin-bottom:17rem;">
    <thead>
        <tr>
            <th scope="col">Sr.No</th>
            <th scope="col">Patient Name</th>
            <th scope="col">Date</th>
            <th scope="col">Start Time</th>
            <th scope="col">End Time</th>
            <th scope="col">Prescription</th>
        </tr>
    </thead>
    <tbody>  
        <%for(AppointmentModel m:list) { %>     
        <tr>
            <th scope="row"><%=++count%></th>
            <td><%=m.getPatientName()%></td>
            <td><%=m.getDate()%></td>
            <td><%=m.getStartTime()%></td>
            <td><%=m.getEndTime()%></td>
            <td><a href="#" class="write-prescription"><i class="fas fa-pen-alt ml-3" aria-hidden="true" onclick='getValue("<%=m.getPatientName()%>","<%=m.getAppointid()%>" )'></i>Write</a></td>
        </tr> 
    </tbody>

<%    }
} else {
%> 
<div class="alert alert-warning" role="alert">
    Appointment Not Available Empty
</div>
<% 
}
%>
</table>
<!-- Popup Form -->
<div class="popup-form-container" id="popupFormContainer">
    <div class="popup-form">
    
    <!-- Close button -->
        <button type="button" class="close" aria-label="Close" id="closePopupForm">
            <span aria-hidden="true">&times;</span>
        </button>
        <!-- Your form content goes here -->
       
           <div class="container mt-5">
    <h2>Prescription Form</h2>
    <form action="prescreptionreceipt.jsp" method="post" id="prescriptionForm">
       <div class="row">
       
        <div class="form-group col-md-6">
           
            <input type="hidden" class="form-control" id="patientName" name="patientName"  value="" required>
        </div>
        <div class="form-group col-md-6">
            
            <input type="hidden" class="form-control" id="appointId" name="appointId"  value="" required>
        </div>
        
                
        </div>
        <div id="medicineList">
            <div class="form-group row medicine-entry">
                <div class="col-md-4">
                    <input type="text" class="form-control" name="medicineName[]" placeholder="Medicine Name" required>
                </div>
                <div class="col-md-3">
                    <input type="text" class="form-control" name="dosage[]" placeholder="Dosage" required>
                </div>
                <div class="col-md-3">
                    <input type="text" class="form-control" name="frequency[]" placeholder="Frequency" required>
                </div>
                <div class="col-md-2">
                    <button type="button" class="btn btn-danger remove-medicine">Remove</button>
                </div>
            </div>
        </div>
        <button type="button" class="btn btn-primary" id="addMedicine">Add Medicine</button>
        <button type="submit" class="btn btn-success">Submit</button>
    </form>
   
</div>
        
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script>


function getValue(pid,appid)
{
	
	alert(pid,appid)
	
	document.getElementById("patientName").value=+pid;
	document.getElementById("appointId").value=appid;
	
	
	
	}

$(document).ready(function() {
    $('.write-prescription').click(function(event) {
        event.preventDefault();
        var patientId = $(this).data('patientid');
        var staffId = $(this).data('staffid');
        $('#popupPatientId').val(patientId);
        $('#popupStaffId').val(staffId);
        $('#popupFormContainer').show();
    });

    $(document).on('click', function(event) {
        if ($(event.target).is('#popupFormContainer')) {
            $('#popupFormContainer').hide();
        }
    });
});

$(document).ready(function() {
    // Add new medicine entry
    $('#addMedicine').click(function() {
        const newEntry = `<div class="form-group row medicine-entry">
            <div class="col-md-4">
                <input type="text" class="form-control" name="medicineName[]" placeholder="Medicine Name" required>
            </div>
            <div class="col-md-3">
                <input type="text" class="form-control" name="dosage[]" placeholder="Dosage" required>
            </div>
            <div class="col-md-3">
                <input type="text" class="form-control" name="frequency[]" placeholder="Frequency" required>
            </div>
            <div class="col-md-2">
                <button type="button" class="btn btn-danger remove-medicine">Remove</button>
            </div>
        </div>`;
        $('#medicineList').append(newEntry);
    });

    $('#closePopupForm').click(function() {
        $('#popupFormContainer').hide();
    });
    
    // Remove medicine entry
    $(document).on('click', '.remove-medicine', function() {
        $(this).closest('.medicine-entry').remove();
    });

    // Handle form submission
    $('#prescriptionForm').submit(function(event) {
        //event.preventDefault();
        let prescriptionDetails = '';
        $('.medicine-entry').each(function() {
            const name = $(this).find('input[name="medicineName[]"]').val();
            const dosage = $(this).find('input[name="dosage[]"]').val();
            const frequency = $(this).find('input[name="frequency[]"]').val();
            prescriptionDetails += `<p>Medicine: ${name}, Dosage: ${dosage}, Frequency: ${frequency}</p>`;
        });
        const patientName = $('#patientName').val();
        const doctorName = $('#doctorName').val();
        const today = new Date();
        const dateInfo = `Date: ${today.toLocaleDateString()}, Time: ${today.toLocaleTimeString()}`;
        $('#patientInfo').text(`Patient Name: ${patientName}`);
        $('#doctorInfo').text(`Doctor Name: ${doctorName}`);
        $('#dateInfo').text(dateInfo);
        $('#prescriptionDetails').html(prescriptionDetails);
        $('#prescriptionInfo').show(); // Show prescription info before printing
       // window.print();
    });
    
    
});
</script>
