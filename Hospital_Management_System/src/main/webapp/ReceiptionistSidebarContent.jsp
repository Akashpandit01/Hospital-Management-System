<div class="admin-logo  mb-4">
      <img src="images/admin2.jpeg" alt="Admin Logo" style="width: 40%;border-radius: 50%;height: 40%;" class="ml-4">
      <h5 class="mt-2 ml-4">Receptionist</h5>
    </div>
    <ul class="ml-4">
        <!--  <li><a href="adminDashBoard.jsp" ><i class="fas fa-tachometer-alt mr-2 ml-3"></i> Overview</a></li>  -->
      
     
     <li class="nav-item dropdown" id="patient">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-user mr-2"></i>  Patient
          </a>
          <div class="dropdown-menu bg-secondary" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="RPatient_info.jsp">Assign Doctor</a>
            <a class="dropdown-item" href="RMainProject.jsp">Add Patient</a>
            
          </div>
        </li>
     
     <li class="nav-item dropdown" id="appointment">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-calendar-check mr-2"></i> Appointments
          </a>
          <div class="dropdown-menu bg-secondary" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="RPatient-DoctInfo.jsp">Schedule Appointment</a>
            <a class="dropdown-item" href="RViweAppointments.jsp">View appointment</a>
            
          </div>
        </li><br><br><br>
      
      <li><a href="logout"><i class="fas fa-sign-out-alt mr-2 "></i> Logout</a></li>
    </ul>