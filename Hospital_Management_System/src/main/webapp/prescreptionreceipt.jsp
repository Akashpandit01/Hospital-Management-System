<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Prescription</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        background-color: #fff;
        color: #333;
    }

    .container {
        margin-top: 50px;
    }

    h1 {
        color: #007bff;
        text-align: center;
    }

    .patient-info h3 {
        color: #007bff;
    }

    .medication-details h3 {
        color: #007bff;
    }

    .print-button {
        text-align: center;
        margin-top: 20px;
    }

    .print-button button {
        padding: 10px 20px;
        font-size: 16px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .print-button button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>

<%
String [] medicineName=request.getParameterValues("medicineName[]");
String [] dosage=request.getParameterValues("dosage[]");
String [] frequency=request.getParameterValues("frequency[]");
String pname=request.getParameter("patientName");
String appoid=request.getParameter("appointId");


System.out.println(pname);

String doctName=(String)session.getAttribute("uname");
%>
<div class="container"> 
    <h1>Prescription</h1>
    <div class="row patient-info">
        <div class="col-md-6">
            <h3>Patient Information</h3>
            <p><strong>Patient Name:</strong><%=pname%></p>
            <p><strong>Doctor Name:</strong><%=doctName%></p>
        </div>
    </div>
    <hr>
    <div class="row medication-details">
        <div class="col-md-12">
            <h3>Medication Details</h3>
            <table class="table">
                <thead>
                    <tr>
                        <th>Medicine Name</th>
                        <th>Dosage</th>
                        <th>Frequency</th>
                    </tr>
                </thead>
                <tbody>
                
                <%
                 
                for(int i=0;i<medicineName.length;i++)
                {
                %>
                    <tr>
                        <td><%=medicineName[i]%></td>
                        <td><%=dosage[i]%></td>
                        <td><%=frequency[i]%></td>
                    </tr>
                   <%
                }
                   %>
                    
                </tbody>
            </table>
        </div>
    </div>
    <div class="print-button">
        <button onclick="window.print()">Print Prescription</button>
    </div>
</div>

</body>
</html>
