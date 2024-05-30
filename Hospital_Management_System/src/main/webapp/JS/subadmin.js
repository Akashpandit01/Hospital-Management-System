 
    // Initial update
var today = new Date();
var option = today.toLocaleString();
document.getElementById('currentDate').innerHTML = option;

// Update every second
setInterval(function() {
    today = new Date();
    option = today.toLocaleString();
    document.getElementById('currentDate').innerHTML = option;
}, 1000);



   // Ajax 
   function searchByParamaterPatient(str)
  {
	  let xhttp=new XMLHttpRequest();
	  xhttp.onreadystatechange=function()
	  {
		  if(this.readyState==4 && this.status==200)
			  {
			  document.getElementById("searchdata").innerHTML=this.responseText;
			  }
		  
		  
	  };
	  xhttp.open("GET","AjaxPatientSearch.jsp?str="+str,true);
	  xhttp.send();
	  
  }
  
  function searchByDeptParamater(str1)
  {
	  let xhttp=new XMLHttpRequest();
	  xhttp.onreadystatechange=function()
	  {
		  if(this.readyState==4 && this.status==200)
			  {
			  document.getElementById("searchdata").innerHTML=this.responseText;
			  }
		  
		  
	  };
	  xhttp.open("GET","AjaxDeptSearchByName.jsp?str1="+str1,true);
	  xhttp.send();
	  
  }
       
  function searchByParamaterStaff(str)
  {
	  let xhttp=new XMLHttpRequest();
	  xhttp.onreadystatechange=function()
	  {
		  if(this.readyState==4 && this.status==200)
			  {
			  document.getElementById("searchdata").innerHTML=this.responseText;
			  }
		  
		  
	  };
	  xhttp.open("GET","AjaxStaffSearch.jsp?str="+str,true);
	  xhttp.send();
	  
  }
   
   function count()
   {  
     var today = new Date();
     var option = today.toLocaleString();
     document.getElementById('currentDate').innerHTML = option;

     // Update every second
     setInterval(function() {
         today = new Date();
         option = today.toLocaleString();
         document.getElementById('currentDate').innerHTML = option;
     }, 1000);
     }
     
     
  
