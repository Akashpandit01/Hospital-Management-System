<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
<!-- Custom CSS  -->
<style>
  <%@ include file="CSS/AddmedicineForm.css"%>
.container {
	max-width: 900px;
	margin: auto;
	margin-top: 50px;
	
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	
}

h2 {
	text-align: center;
	margin-bottom: 30px;
}

label {
	font-weight: bold;
}

input[type="text"], select {
	width: 90%;
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #ced4da;
	border-radius: 5px;
	box-sizing: border-box;
}

button[type="submit"] {
	width: 90%;
	padding: 10px;
	background-color: #007bff;
	border: none;
	border-radius: 5px;
	color: white;
	cursor: pointer;
}

button[type="submit"]:hover {
	background-color: #0056b3;
}
</style>

<script type='text/javascript'>
function validate(str)
{   var flag=false;
    var spanElement;
   for(var i=0;i<str.length;i++)
   {
     var ascii=str.charCodeAt(i);
if(!((ascii>=48 && ascii<=57)))
  { flag=true;
     break;
      }
   }  
   if(flag)
   {
	   spanElement=document.getElementById("s");
 spanElement.innerHTML="invalid Price";
 spanElement.style.color="red";
     spanElement.styel.backgroundColor="white";
   }
   else{
       spanElement=document.getElementById("s");
 spanElement.innerHTML="";
 spanElement.style.color="white";
     spanElement.styel.backgroundColor="white";

   }   
}
</script>  

</head>
<body>

   <div class="container-fluid  ">
        <div class="row">
          
          <div class="col-md-2 col-sm-12 sidebar">
				
					<div class="admin-logo mb-4">
						<img src="images/admin2.jpeg" alt="Admin Logo"
							style="width: 80px; border-radius: 50%; height: 80px;"
							class="ml-4">
						<h5 class="mt-2 ml-4">Admin</h5>
					</div>
					<ul class="ml-4">
						<li><a href="#"><i class="fas fa-tachometer-alt mr-2"></i>
								Overview</a></li>
						<li><a href="medicine.jsp" style="color: darkblue;"><i
								class="fas fa-user mr-2"></i> Medicine</a></li>
						<li><a href="#"><i class="fas fa-calendar-check mr-2"></i>
								Appointments</a></li>
						<li><a href="#"><i class="fas fa-user-md mr-2"></i>
								Doctors</a></li>
						<li><a href="department.jsp"><i class="fas fa-building mr-2"></i>
								Departments</a></li>
						<li><a href="staff.jsp"><i class="fas fa-users mr-2"></i> Staff</a></li>
						<li><a href="#"><i class="fas fa-sign-out-alt mr-2 "
								style="margin-top: 9rem;"></i> Logout</a></li>
					</ul>
				


			</div>
			
			<div class="col-md-10 col-sm-12-mt-5 main-contents">
			
			     <div class="container bg-light">
			        <div class="row">
			        
			         <div class="col-md-6 col-sm-12">
			             
			             <img src="imgs/addmedicine.jpeg" alt="Medicine Registration"
						class="img-fluid mt-5 img">
						
						<h5 id="response" class="mt-5"></h5>
			         
			         
			         </div>
			         
			        <!-- <div class="col-md-6 col-sm-12 sub">

                              <div class="row">
                                   <div class="col-md-6 col-sm-12">
                                   
                                   <h3 id="response"></h3>
                                   </div> --> 
                                   
                                   <div class="col-md-6 col-sm-12  subj">
                                           <h2
								style="color: #093b6a; font-family: 'Times New Roman', Times, serif;">Add
								New Medicine</h2>
							<form name='frm' method='POST' action='newmedicine'>
								
								<div class="form-group">
									<label for="medicineName">medicine Name</label> <input
										type="text" class="form-control" id="medicineName"
										name="medicineName" placeholder="Enter medicine Name " required>
								</div>
								<div class="form-group">
									<label for="Price">Price</label> <input type="text"class="form-control" id="Price" name="Price"
										value='' placeholder="Enter Price"  onkeyup='validate(this.value)' required>
										<span id="s"></span>
								</div>
								
								<div class="form-group">
									<label for="Manufacture">Manufacture date</label> <input type="date"class="form-control" id="Manufacture" name="Manufacture"
									placeholder="Enter Year-Month-Date" required>
								</div>
								<div class="form-group">
									<label for="Expiry">Expiry date</label> <input type="date"class="form-control" id="contact" name="Expiry"
										placeholder="Enter Year-Month-Date" required>
								</div>
								<button type="submit" name="s" class="btn btn-primary">Submit</button>
							</form>
                                   
                                   </div>
                              </div>
							
						</div>
						</div>
						</div>  
						
						</div>
						</div>  
						
						</div>
			       
</body>
</html>