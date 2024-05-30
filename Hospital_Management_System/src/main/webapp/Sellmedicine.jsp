<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

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
	
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	animation: fadeIn 2s ease; 
	
}
@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translateY(-20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

h2 {
	text-align: center;
	margin-bottom: 30px;
}

label {
	font-weight: bold;
}

input[type="text"], select {
	width: 45%;
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #ced4da;
	border-radius: 5px;
	box-sizing: border-box;
}

button[type="submit"] {
	width: 45%;
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
 <script>


function validate(str)
    {   var flag=false;
        var spanElement;
       for(var i=0;i<str.length;i++)
       {        var ascii=str.charCodeAt(i);
	  if(!((ascii>=65 && ascii<=90) ||(ascii>=97 && ascii<=122) ||ascii==32))
	  { flag=true;
	     break;
                }
       }  
       if(flag)
       { spanElement=document.getElementById("s");
	 spanElement.innerHTML="invalid name";
	 spanElement.style.color="red";
        //  spanElement.styel.backgroundColor="white";
       }
       else{
         spanElement=document.getElementById("s");
	 spanElement.innerHTML="";
	//  spanElement.style.color="white";
        //  spanElement.styel.backgroundColor="white";

       }   
    }


    function validatenum(str)
    {   var flag=false;
        var spanElement;
       for(var i=0;i<str.length;i++)
       {
         var ascii=str.charCodeAt(i);
if(!((ascii>=48 && ascii<=57) && (str.length==10) && (!(str.charCodeAt(0)>=49 && str.charCodeAt(0)<=53)) ))
// && parseInt(str.charAt(0)) > 6

	  { flag=true;
	     break;
          }
       }  
       if(flag)
       { spanElement=document.getElementById("c");
	 spanElement.innerHTML="invalid Contact";
	 spanElement.style.color="red";
        //  spanElement.styel.backgroundColor="white";
       }
       else{
           spanElement=document.getElementById("c");
	 spanElement.innerHTML="";
	//  spanElement.style.color="white";
        //  spanElement.styel.backgroundColor="white";

       }   
    }

    function validateDisease(str) {
    var flag = false;
    var spanElement;
    for (var i = 0; i < str.length; i++) {
        var ascii = str.charCodeAt(i);
        if (!((ascii >= 65 && ascii <= 90) || (ascii >= 97 && ascii <= 122) || ascii == 32)) {
            flag = true;
            break;
        }
    }
    if (flag) {
        spanElement = document.getElementById("d");
        spanElement.innerHTML = "Invalid disease name";
        spanElement.style.color = "red";
    } else {
        spanElement = document.getElementById("d");
        spanElement.innerHTML = "";
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
						<h5 class="mt-2 ml-4">Pharmacist</h5>
					</div>
					<ul class="ml-4">
						<ul class="ml-4">
      
      <li><a href="medicine.jsp" style="color:darkblue;"><i class="fa fa-medkit mr-2"></i> Medicine</a></li>
      <li><a href="ViewSellMedicine.jsp"><i class="fas fa-user-md mr-2"></i> View sold Medicine</a></li>
      <li><a href="logout"><i class="fas fa-sign-out-alt mr-2" style="margin-top:9rem;"></i> Logout</a></li>
 	
					</ul>
			</div>
			
			
			<div class="col-md-10 col-sm-12-mt-5 main-contents">
			
			     <div class="container bg-light">
			        <div class="row">
			        
			        
			         
			         <div class="col-md-12 col-sm-12 sub ">

							<h2>Medicine Selling Form</h2>
	<form action="SellMedi" method="post">
		<label for="patientName">Patient Name:</label> <input type="text"
			id="patientName" name="patientName" required>

		<div id="medicineInputs">
			<div class="medicineInput">
				<label for="medicineName1">Medicine Name:</label> <input type="text"
					id="medicineName1" name="medicineName" required> <label
					for="quantity1">Quantity:</label> <input type="number"
					id="quantity1" name="quantity" required>
			</div>
		</div>

		<div class="buttonRow">
			<button type="button" onclick="addMedicine()" style="background: #0275d8">Add Medicine</button>
			<input type="submit" value="Sell" style="background: #0275d8;Color:white;">
		</div>
	</form>


						</div>
			        
			        </div>
			     
			     
			     </div>
			</div>
          

        </div>
   </div>
	
	

<script>
		var medicineCounter = 1;

		function addMedicine() {
			medicineCounter++;
			var div = document.createElement('div');
			div.classList.add('medicineInput');
			div.innerHTML = '<label for="medicineName' + medicineCounter + '">Medicine Name:</label>'
					+ '<input type="text" id="medicineName' + medicineCounter + '" name="medicineName" required>'
					+ '<label for="quantity' + medicineCounter + '">Quantity:</label>'
					+ '<input type="number" id="quantity' + medicineCounter + '" name="quantity" required>';
			document.getElementById('medicineInputs').appendChild(div);
		}
	</script>

</body>
</html>