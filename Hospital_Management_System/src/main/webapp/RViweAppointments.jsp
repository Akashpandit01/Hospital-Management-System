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
<style><%@ include file ="CSS/dashboardStyle.css"%>

#appointment
{
    color:darkblue;
}
 #status {
       
    
    padding: 8px;
    border-radius: 5px;
    border: 1px solid #ccc;
    font-size: 1rem;
    background-color: #f8f9fa;
    transition: all 0.3s ease;
    }

    #status:focus {
        border-color: #007bff;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        background-color: #ffffff;
    }
</style>

</script>
</head>
<body onload="count()" >

<%!

%>

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
						style="height:10vh;">
						<!-- Second Row Content -->
						<label for="status">Filter By Status:</label>&nbsp;
						<select id="status" onchange="filterAppointments(status)">
						   <option value="all" selected>All</option>
						   <option value="pending">Pending</option>
						   <option value="processing">Processing</option>
						   <option value="completed">Completed</option>
						
						</select>
					</div>
					<div class="row thirdRow">
						<!-- Third Row Content -->
						<%@ include file="AllappointTable.jsp" %>
					</div>
					<div class="row row-height-7" style="height:5.8vh;">
						<!-- Fourth Row Content -->
					</div>
				
			</div>
		</div>
	</div>
	<div id="popupForm" class="form-popup">
		
	</div>
	<div id="successMessage" class="success-message mt-5">Submit
		Successful</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>	
		
		
		
<script type="text/javascript">
<%@ include file="JS/admin.js"%> <%@ include file="JS/validations.js"%>  
function filterAppointments()
{
	var status=document.getElementById('status').value;
	
	if(status == "all")
		{
		
		let xhttp=new XMLHttpRequest();
		  xhttp.onreadystatechange=function()
		  {
			  if(this.readyState==4 && this.status==200)
				  {
				  document.getElementById("searchdata").innerHTML=this.responseText;
				  }
			  
			  
		  };
		  xhttp.open("GET","AjaxAllAppoi.jsp?status="+status,true);
		  xhttp.send();
		
		}
	else if(status == "pending")
	{
	
	let xhttp=new XMLHttpRequest();
	  xhttp.onreadystatechange=function()
	  {
		  if(this.readyState==4 && this.status==200)
			  {
			  document.getElementById("searchdata").innerHTML=this.responseText;
			  }
		  
		  
	  };
	  xhttp.open("GET","AjaxPendingAppoi.jsp?status="+status,true);
	  xhttp.send();
	
	}
	else if(status == "processing")
	{
	
	let xhttp=new XMLHttpRequest();
	  xhttp.onreadystatechange=function()
	  {
		  if(this.readyState==4 && this.status==200)
			  {
			  document.getElementById("searchdata").innerHTML=this.responseText;
			  }
		  
		  
	  };
	  xhttp.open("GET","AjaxProcessingAppoi.jsp?status="+status,true);
	  xhttp.send();
	
	}
	
	else if(status == "completed")
	{
	
	let xhttp=new XMLHttpRequest();
	  xhttp.onreadystatechange=function()
	  {
		  if(this.readyState==4 && this.status==200)
			  {
			  document.getElementById("searchdata").innerHTML=this.responseText;
			  }
		  
		  
	  };
	  xhttp.open("GET","AjaxCompletAppoi.jsp?status="+status,true);
	  xhttp.send();
	
	}

	 
	
	}


</script>
</body>
</html>
