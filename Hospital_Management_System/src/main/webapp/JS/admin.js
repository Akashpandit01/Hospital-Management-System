 
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
    let totalDoctors = 23;
    let totalPatients = 1;
    let totalDepartments = 10;

    // Animate counters
     pureCounter(0, totalDoctors, 3000, totalDoctorsElement);
     pureCounter(0, totalPatients, 3000, totalPatientsElement);
     pureCounter(0, totalDepartments, 3000, totalDepartmentsElement);
   
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
     
     
     
// JavaScript to display popup form when "Add Filter" button is clicked
    document.getElementById("addFilterBtn").addEventListener("click", function(event) {
      document.getElementById("popupForm").classList.add("show");
      event.stopPropagation(); // Prevent click event from propagating to the document body
    });

    // JavaScript to handle form submission
    /*document.getElementById("submitForm").addEventListener("submit", function(event) {
      event.preventDefault(); // Prevent default form submission
      // Simulate form submission (in real-world, this should be an AJAX request)
      setTimeout(function() {
        document.getElementById("successMessage").style.display = "block";
        document.getElementById("popupForm").classList.remove("show");
        // Hide success message after 3 seconds
        setTimeout(function() {
          document.getElementById("successMessage").style.display = "none";
        }, 3000);
      }, 1000); // Simulating a delay
    });*/

    // JavaScript to hide popup when clicking outside
    document.addEventListener("click", function(event) {
      var popupForm = document.getElementById("popupForm");
      if (event.target !== popupForm && !popupForm.contains(event.target)) {
        popupForm.classList.remove("show");
      }
    });
    
    
    
   // JavaScript to display popup form when "Add Filter" button is clicked
    document.getElementById("Assign").addEventListener("click", function(event) {
      document.getElementById("popupForm").classList.add("show");
      event.stopPropagation(); // Prevent click event from propagating to the document body
    });

    // JavaScript to handle form submission
    /*document.getElementById("submitForm").addEventListener("submit", function(event) {
      event.preventDefault(); // Prevent default form submission
      // Simulate form submission (in real-world, this should be an AJAX request)
      setTimeout(function() {
        document.getElementById("successMessage").style.display = "block";
        document.getElementById("popupForm").classList.remove("show");
        // Hide success message after 3 seconds
        setTimeout(function() {
          document.getElementById("successMessage").style.display = "none";
        }, 3000);
      }, 1000); // Simulating a delay
    });*/

    // JavaScript to hide popup when clicking outside
    document.addEventListener("click", function(event) {
      var popupForm = document.getElementById("popupForm");
      if (event.target !== popupForm && !popupForm.contains(event.target)) {
        popupForm.classList.remove("show");
      }
    });

    // JavaScript to display popup form when "Add Filter" button is clicked
    document.getElementById("addFilterBtn").addEventListener("click", function(event) {
      document.getElementById("popupForm1").classList.add("show");
      event.stopPropagation(); // Prevent click event from propagating to the document body
    });

    // JavaScript to handle form submission
    /*document.getElementById("submitForm").addEventListener("submit", function(event) {
      event.preventDefault(); // Prevent default form submission
      // Simulate form submission (in real-world, this should be an AJAX request)
      setTimeout(function() {
        document.getElementById("successMessage").style.display = "block";
        document.getElementById("popupForm").classList.remove("show");
        // Hide success message after 3 seconds
        setTimeout(function() {
          document.getElementById("successMessage").style.display = "none";
        }, 3000);
      }, 1000); // Simulating a delay
    });*/

    // JavaScript to hide popup when clicking outside
    document.addEventListener("click", function(event) {
      var popupForm = document.getElementById("popupForm1");
      if (event.target !== popupForm && !popupForm.contains(event.target)) {
        popupForm.classList.remove("show");
      }
    });
    
    
    
   // JavaScript to display popup form when "Add Filter" button is clicked
    document.getElementById("Assign").addEventListener("click", function(event) {
      document.getElementById("popupForm1").classList.add("show");
      event.stopPropagation(); // Prevent click event from propagating to the document body
    });

    // JavaScript to handle form submission
    /*document.getElementById("submitForm").addEventListener("submit", function(event) {
      event.preventDefault(); // Prevent default form submission
      // Simulate form submission (in real-world, this should be an AJAX request)
      setTimeout(function() {
        document.getElementById("successMessage").style.display = "block";
        document.getElementById("popupForm").classList.remove("show");
        // Hide success message after 3 seconds
        setTimeout(function() {
          document.getElementById("successMessage").style.display = "none";
        }, 3000);
      }, 1000); // Simulating a delay
    });*/

    // JavaScript to hide popup when clicking outside
    document.addEventListener("click", function(event) {
      var popupForm1 = document.getElementById("popupForm1");
      if (event.target !== popupForm1 && !popupForm1.contains(event.target)) {
        popupForm1.classList.remove("show");
      }
    });

     
     
    
   }

