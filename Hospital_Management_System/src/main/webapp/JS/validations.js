    // function checks all types of valid names
    
    
    
function validateInput(str) {
    var flag = false;
    var spanElement;
    for(var i = 0; i < str.length; i++) {
        var ascii = str.charCodeAt(i);
        if(!((ascii >= 65 && ascii <= 90) || (ascii >= 97 && ascii <= 122) || ascii == 32)) {
            flag = true;
            break;
        }
    }  
    if(flag) {
        spanElement = document.getElementById("Name");
        spanElement.innerHTML = "Invalid Name";
        spanElement.style.color = "red";
    } else {
        spanElement = document.getElementById("Name");
        spanElement.innerHTML = "";
    }
}

// this function checks valid disease names

 function validateDisease(str) {
    var flag = false;
    var spanElement;
    for (var i = 0; i < str.length; i++) {
        var ascii = str.charCodeAt(i);
        if (!((ascii >= 65 && ascii <= 90) || (ascii >= 97 && ascii <= 122) || ascii == 32 || ascii==47 || ascii==45 || (ascii >=48 && ascii <= 57))) {
            flag = true;
            break;
        }
    }
    if (flag) {
        spanElement = document.getElementById("Disease");
        spanElement.innerHTML = "Invalid disease name";
        spanElement.style.color = "red";
    } else {
        spanElement = document.getElementById("Disease");
        spanElement.innerHTML = "";
    }
}




// validations for contact
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
       { spanElement=document.getElementById("Contact");
	 spanElement.innerHTML="Invalid Contact";
	 spanElement.style.color="red";
        //  spanElement.styel.backgroundColor="white";
       }
       else{
           spanElement=document.getElementById("Contact");
	 spanElement.innerHTML="";
	//  spanElement.style.color="white";
        //  spanElement.styel.backgroundColor="white";

       }   
    }
    
    
    function validateInput1(str) {
    var flag = false;
    var spanElement;
    for(var i = 0; i < str.length; i++) {
        var ascii = str.charCodeAt(i);
        if(!((ascii >= 65 && ascii <= 90) || (ascii >= 97 && ascii <= 122) || ascii == 32)) {
            flag = true;
            break;
        }
    }  
    if(flag) {
        spanElement = document.getElementById("specialty");
        spanElement.innerHTML = "Invalid Name";
        spanElement.style.color = "red";
    } else {
        spanElement = document.getElementById("specialty");
        spanElement.innerHTML = "";
    }
}



    function validateInput2(str) {
    var flag = false;
    var spanElement;
    for(var i = 0; i < str.length; i++) {
        var ascii = str.charCodeAt(i);
        if(!((ascii >= 65 && ascii <= 90) || (ascii >= 97 && ascii <= 122) || ascii == 32)) {
            flag = true;
            break;
        }
    }  
    if(flag) {
        spanElement = document.getElementById("designation");
        spanElement.innerHTML = "Invalid Name";
        spanElement.style.color = "red";
    } else {
        spanElement = document.getElementById("designation");
        spanElement.innerHTML = "";
    }
}

  function validateInputCharges(str)
  {
	  
	  var flag = false;
    
    for(var i = 0; i < str.length; i++) {
        var ascii = str.charCodeAt(i);
        var ascii1=str.charCodeAt(0);
        if(((! ascii >= 48 && ascii <= 57)|| (ascii >= 65 && ascii <= 90) || (ascii >= 97 && ascii <= 122)  || ascii1 == 48)) {
            flag = true;
            break;
        }
    }  
    if(flag) {
        spanElement = document.getElementById("charge");
        spanElement.innerHTML = "Invalid Charges";
        spanElement.style.color = "red";
    } else {
        spanElement = document.getElementById("charge");
        spanElement.innerHTML = "";
    }
	  
  }
  
   
  

