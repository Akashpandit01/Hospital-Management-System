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
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- Font Awesome for icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <!-- Custom CSS -->
  <style>
   <%@ include file="CSS/adminStyle.css"%>
 #genderChart
 {
   height:7vh;
   width:50%;
 }
 
   
  </style>
</head>
<body>

<%
  addPatientService pService=new addPatientServiceImpl();
  addDeptService dService=new addDeptServiceImpl();
  addStaffService sService=new addStaffServiceImpl();
%>
<div class="container-fluid">
   <div class="row">
  <div class="sidebar col-md-2">
    <div class="admin-logo  mb-4 mt-5">
      <img src="images/admin2.jpeg" alt="Admin Logo" style="width: 40%;border-radius: 50%;height: 40%;" class="ml-4">
      <h5 class="mt-2 ml-4">Admin</h5>
    </div>
    <ul class="ml-4">
      <li><a href="adminDashBoard.jsp" ><i class="fas fa-tachometer-alt mr-2 ml-3"></i> Overview</a></li>
      
     
     <li class="nav-item dropdown" id="patient">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-user mr-2"></i>  Patients
          </a>
          <div class="dropdown-menu bg-secondary" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="patient_info.jsp">Assign Doctor</a>
            <a class="dropdown-item" href="mainProject.jsp">Add Patient</a>
            
          </div>
        </li>
     
     <li class="nav-item dropdown" id="appointment">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-calendar-check mr-2"></i> Appointments
          </a>
          <div class="dropdown-menu bg-secondary" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="patientDoct-info.jsp">Schedule Appointment</a>
            <a class="dropdown-item" href="viewAppointments.jsp">View appointment</a>
            
          </div>
        </li>
      <li><a href="departmentMain.jsp" id="dept"><i class="fas fa-building mr-2 ml-3"></i> Departments</a></li>
      <li><a href="staffMain.jsp" id="staff"><i class="fas fa-users mr-2 ml-3"></i> Staff</a></li>
      <li><a href="logout"><i class="fas fa-sign-out-alt mr-2 " style="margin-top:9rem;"></i> Logout</a></li>
    </ul>
  </div>

  <div class="main-content col-md-10">
    <div class="dashboard-header">
      <div class="row">
        <div class="col-md-6">
          <h2>Welcome to the Admin Dashboard!</h2>
        </div>
        
         <div class="col-md-6 text-right">
        <div class="date-icons">
             
          <i class="fas fa-calendar-alt mr-5"></i> <!-- Calendar icon -->
          <i class="fas fa-clock mr-5"></i> 
          <div id="currentDate"></div> <!-- Date display -->
        </div>
      </div>
        
      </div>
    </div>
    <div class="row mb-4">
      <div class="col-md-4">
        <div class="card text-white">
          <div class="card-body">
            <h5 class="card-title">Total Doctors</h5>
            <p class="card-text"><span id="totalDoctors">0</span></p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card text-white">
          <div class="card-body">
            <h5 class="card-title">Total Patients</h5>
            <p class="card-text"><span id="totalPatients">0</span></p>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="card  text-white">
          <div class="card-body">
            <h5 class="card-title">Total Departments</h5>
            <p class="card-text"><span id="totalDepartments">0</span></p>
          </div>
        </div>
      </div>
    </div>
    <div class="row "  min-height:100px;">
      <div class="col-md-5 mt-4 appo-heading" style="overflow-y: scroll;height: 450px;width:30%;">
        <h3 class="mb-4">Upcoming Appointments</h3>
       
          <%@include file="UpcomingAppointments.jsp" %>
      </div>
          
      <div class="col-md-7 " >
      <div class='row'>
        <div class='col-md-12'>
             <div class="chartheading heading m-0">
          <h1 class="mb-4 ml-5 mt-4">Gender Of New Patients in OPD Year (2021-2024)</h1>
          <canvas id="genderChart"></canvas>
        </div>
      
      <%  
      
      int totalPatient=pService.totalPatients();
      int totalDepartment=dService.totalDepartments();
      int totalDoctor=sService.totalDoctors();
      int male21=pService.noOfMaleFemale("Male","2021");
      int male22=pService.noOfMaleFemale("Male","2022");
      int male23=pService.noOfMaleFemale("Male","2023");
      int male24=pService.noOfMaleFemale("Male","2024");
      int feMale21=pService.noOfMaleFemale("Female", "2021");
      int feMale22=pService.noOfMaleFemale("Female", "2022");
      int feMale23=pService.noOfMaleFemale("Female", "2023");
      int feMale24=pService.noOfMaleFemale("Female", "2024");
       
      
      %>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script>
          var ctx = document.getElementById('genderChart').getContext('2d');
          var genderChart = new Chart(ctx, {
              type: 'bar',
              data: {
                  labels: ['2021', '2022', '2023', '2024'],
                  datasets: [{
                      label: 'Female',
                      data: ["<%=feMale21%>","<%=feMale22%>","<%=feMale23%>","<%=feMale24%>"],
                      backgroundColor: '#008B8B',
                      borderColor: '#008B8B',
                      borderWidth: 1
                  }, {
                      label: 'Male',
                      data: ["<%=male21%>","<%=male22%>","<%=male23%>","<%=male24%>"],
                      backgroundColor: '#03254C',
                      borderColor: '4682b4',
                      borderWidth: 1
                  }]
              },
              options: {
                  scales: {
                      yAxes: [{
                          ticks: {
                              beginAtZero: true
                          }
                      }]
                  }
              }
          });
        </script>
        </div>
      </div>
       
      </div>
    </div>
  </div>
  </div>
  </div>

     

   <!-- JavaScript -->
   <script>
    // Function to animate number count
     function pureCounter(start, end, duration, element) {
      let range = end - start;
      let current = start;
      let increment = end > start ? 1 : -1;
      let stepTime = Math.abs(Math.floor(duration / range));
      let timer = setInterval(function () {
        current += increment;
        element.textContent = current;
        if (current == end) {
          clearInterval(timer);
        }
      }, stepTime);
    }

    // Call the function for each counter
    let totalDoctorsElement = document.getElementById('totalDoctors');
    let totalPatientsElement = document.getElementById('totalPatients');
    let totalDepartmentsElement = document.getElementById('totalDepartments');

    // Example values (replace with actual values)
    let totalDoctors = "<%=totalDoctor%>";
    let totalPatients = "<%=totalPatient %>";
    let totalDepartments = "<%=totalDepartment%>";

    // Animate counters
     pureCounter(0, totalDoctors, 3000, totalDoctorsElement);
     pureCounter(0, totalPatients, 3000, totalPatientsElement);
     pureCounter(0, totalDepartments, 3000, totalDepartmentsElement);

  </script>
  <script src="JS/admin.js"></script>

</body>
</html>
