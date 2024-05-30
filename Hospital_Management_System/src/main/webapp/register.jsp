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
    background-image: url(images/mainbackground.jpg);
    backdrop-filter: blur(5px);
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    z-index: -1;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
  }
  .container {
    background: linear-gradient(to bottom right, #636567, #66ccff);
    border-radius: 20px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    padding: 20px;
    width: 400px;
    animation: fadeIn 1s ease-in-out;
  }
  form {
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease-in-out;
    z-index:100;
  }
  form:hover {
    transform: scale(1.05);
  }
  input[type="text"], input[type="email"], input[type="password"], input[type="date"], select {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
    transition: all 0.3s ease-in-out;
    animation: fadeInUp 1s ease-in-out;
  }
  input[type="text"]:focus, input[type="email"]:focus, input[type="password"]:focus, input[type="date"]:focus, select:focus {
    border-color: #007bff;
    box-shadow: 0 0 5px #007bff;
  }
  input[type="submit"] {
    width: 100%;
    background-color: #007bff;
    color: rgb(255, 255, 255);
    padding: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 1.1rem;
    font-weight: 700;
    margin-bottom:10px;
    transition: background-color 0.3s ease-in-out;
    animation: bounce 1s ease-in-out;
  }
  input[type="submit"]:hover {
    background-color: #0056b3;
    animation: pulse 0.5s infinite alternate;
  }
  .input-group {
    position: relative;
  }
  .input-group i {
    position: absolute;
    left: 10px;
    top: 35%;
    transform: translateY(-50%);
    color: #012954;
  }
  select {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    padding-left: 2.4rem; /* Adjust for icon */
  }
  select:focus {
    outline: none;
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
  @keyframes bounce {
    0%, 100% { transform: translateY(0); }
    50% { transform: translateY(-10px); }
  }
  @keyframes pulse {
    0% { transform: scale(1); }
    100% { transform: scale(1.05); }
  }
  ::placeholder {
    padding-left: 1.4rem;
    font-weight: 500;
    font-family: italic;
    font-size: 1rem;
  }
  .extra-links {
  }
  .extra-links a {
    display: inline-block;
    margin-right: 10px;
    text-decoration: none;
    color: #007bff;
    font-size: 14px;
    justify-content:space-between;
    margin-left:5px;
  }
  .extra-links a:hover {
    text-decoration: underline;
  }
</style>
</head>
<body>
  <div class="container">
    <center><h2 id="response"></h2></center>
    <form name='frm' method='POST' action='r'>
      <h2 style="text-align: center; color: #222325e1;font-size: 2rem;">Register</h2>
      <div class="input-group">
        <i class="fas fa-user"></i>
        <input type="text" name="username" placeholder="Enter Username" required>
      </div>
      <div class="input-group">
        <i class="fas fa-lock"></i>
        <input type="text" name="password" placeholder="Enter Password" required>
      </div>
      <div class="input-group">
        <i class="fas fa-user-tag"></i>
        <label for="gender" style="display:none;">Role</label>
        <select class="form-control" id="role" name="role" required>
          <option value="">Select Role</option>
          <option value="Admin">Admin</option>
          <option value="Receptionist">Receptionist</option>
          <option value="Doctor">Doctor</option>
          <option value="Pharmacist">Pharmacist</option>
        </select>
      </div>
      <input type="submit" value="Register">
      <div class="row">
        <div class="col-md-12 extra-links">
          <a href="login.jsp">Login</a>
        </div>
      </div>
    </form>
  </div>
  <script src="JS/register.js"></script>
</body>
</html>
