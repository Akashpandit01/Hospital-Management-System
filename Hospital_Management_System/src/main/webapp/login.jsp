<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hospital Registration</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<style>
  body {
    font-family: Arial, sans-serif;
    /*background-color: #a3c5e2; /* light blue background */
   /* background-image: linear-gradient(75.2deg,rgba(41,196,255,1)-2.5%,rgba(255,158,211,1) 55%,rgba(255,182,138,1) 102.3%);*/
   /*background-image: radial-gradient(circle farthest-corner at 48.4% 47.5%,rgb(152, 188, 230) 0%,rgba(21,83,161,1) 90%);*/
   background-image: url(images/mainbackground.jpg);
   backdrop-filter: blur(5px);
   background-position: center;
   background-repeat: no-repeat;
   background-size: cover;
  z-index: -1;;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
  }
  .container {
    background: linear-gradient(to bottom right, #636567, #66ccff); /* gradient background */
    border-radius: 20px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    padding: 20px;
    width: 400px;
    animation: fadeIn 1s ease-in-out; /* fade-in animation */
  }
  form {
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease-in-out;
  }
  form:hover {
    transform: scale(1.05); /* scale up on hover */
  }
  input[type="text"], input[type="email"], input[type="password"], input[type="date"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
    transition: all 0.3s ease-in-out;
    animation: fadeInUp 1s ease-in-out; /* fade-in from bottom animation */
  }
  input[type="text"]:focus, input[type="email"]:focus, input[type="password"]:focus, input[type="date"]:focus {
    border-color: #007bff; /* change border color on focus */
    box-shadow: 0 0 5px #007bff; /* add shadow on focus */
    /*animation: shake 0.5s ease-in-out; /* shake animation on focus */
    
  }
  input[type="submit"] {
    width: 100%;
    background-color: #007bff; /* blue button color */
    color: rgb(255, 255, 255);
    padding: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 1.1rem;
    font-weight: 700;
    transition: background-color 0.3s ease-in-out;
    animation: bounce 1s ease-in-out; /* bounce animation */
    margin-bottom:10px;
  }
  input[type="submit"]:hover {
    background-color: #0056b3; /* darker blue on hover */
    animation: pulse 0.5s infinite alternate; /* pulse animation on hover */
  }

  @keyframes fadeIn {
    from {
      opacity: 0;
    }
    to {
      opacity: 1;
    }
  }

  @keyframes fadeInUp {
    from {
      transform: translateY(100%);
      opacity: 0;
    }
    to {
      transform: translateY(0);
      opacity: 1;
    }
  }

  @keyframes shake {
    0% { transform: translateX(0); }
    25% { transform: translateX(-5px); }
    50% { transform: translateX(5px); }
    75% { transform: translateX(-3px); }
    100% { transform: translateX(0); }
  }

  @keyframes bounce {
    0%, 100% { transform: translateY(0); }
    50% { transform: translateY(-10px); }
  }

  @keyframes pulse {
    0% { transform: scale(1); }
    100% { transform: scale(1.05); }
  }
  ::placeholder
  {
    padding-left: 1.4rem;
    font-weight: 500;
    font-family: italic;
    font-size: 1rem;
  }
  i
  {
    color:  #012954;
  }
  .extra-links {
   
}

.extra-links a {
    display: inline-block;
    margin-right: 10px;
    text-decoration: none;
    color: #007bff;
    font-size: 14px;
}

.extra-links a:hover {
    text-decoration: underline;
}
</style>
</head>
<body>
  <div class="container">
    <form action="login" method="post">
      <h2 style="text-align: center; color: #222325e1;font-size: 2rem;">Login</h2>
     
      <div   class="input-group"  style="position: relative;" >
        <i class="fas fa-user" style="position: absolute; left: 10px; top: 35%; transform: translateY(-50%);"></i>
        <input type="text" name="username" placeholder="Enter Username" required>
      </div>
      
      <div class="input-group"  style="position: relative;">
        <i class="fas fa-lock" style="position: absolute; left: 10px; top: 35%; transform: translateY(-50%);"></i>
        <input type="text" name="password" placeholder="Enter Password" required>
      </div>
      
     
      
      <input type="submit" value="Login">
      
       <div class="extra-links ">
                            <a href="#">Forgot Password</a>
                            <a href="register.jsp">Create Account</a>
                        </div>
    </form>
  </div>
  
  <script>
    // Shift cursor by 20px to the right on input focus
    document.querySelectorAll('.input-group input').forEach(input => {
      input.addEventListener('focus', () => {
        input.style.paddingLeft = '35px'; // Adjust this value as needed
      });
  
      input.addEventListener('blur', () => {
        input.style.paddingLeft = ''; // Reset padding when not focused
      });
    });
  </script>
</body>
</html>