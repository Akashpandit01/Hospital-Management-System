<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Medicine</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
.form-popup {
    width: 31%;
    height: 80vh;
    background-color: #68b2f8;
    position: absolute;
    z-index: 9999;
    border: 1px solid #ccc;
    right: 5vw; /* Align to the right side */
    top: 20vh; /* Adjust position */
    padding: 20px;
    display: none;
    border-radius: 8px;
}
.form-popup.show {
    display: block;
}
</style>
<script type="text/javascript">
function validate(str) {
    var flag = false;
    var spanElement;
    for (var i = 0; i < str.length; i++) {
        var ascii = str.charCodeAt(i);
        if (!((ascii >= 48 && ascii <= 57))) {
            flag = true;
            break;
        }
    }
    if (flag) {
        spanElement = document.getElementById("s");
        spanElement.innerHTML = "Invalid Price";
        spanElement.style.color = "red";
        spanElement.style.backgroundColor = "white";
    } else {
        spanElement = document.getElementById("s");
        spanElement.innerHTML = "";
        spanElement.style.color = "white";
        spanElement.style.backgroundColor = "white";
    }
}
</script>
</head>
<body>
    <div id="popupForm" class="form-popup">
        <h2 style="color: #093b6a; font-family: 'Times New Roman', Times, serif;">Add New Medicine</h2>
        <form name="frm" method="POST" action="newmedicine">
            <div class="form-group">
                <label for="medicineName">Medicine Name</label>
                <input type="text" class="form-control" id="medicineName" name="medicineName" placeholder="Enter Medicine Name" required>
            </div>
            <div class="form-group">
                <label for="Price">Price</label>
                <input type="text" class="form-control" id="Price" name="Price" placeholder="Enter Price" onkeyup="validate(this.value)" required>
                <span id="s"></span>
            </div>
            <div class="form-group">
                <label for="Manufacture">Manufacture Date</label>
                <input type="date" class="form-control" id="Manufacture" name="Manufacture" placeholder="Enter Year-Month-Date" required>
            </div>
            <div class="form-group">
                <label for="Expiry">Expiry Date</label>
                <input type="date" class="form-control" id="Expiry" name="Expiry" placeholder="Enter Year-Month-Date" required>
            </div>
            <button type="submit" name="s" class="btn btn-primary">Submit</button>
        </form>
    </div>
    
    <div id="popupFormm" class="form-popup">
        <h2 style="color: #093b6a; font-family: 'Times New Roman', Times, serif;">Add New Medicine</h2>
        <form name="frm" method="POST" action="newmedicine">
            <div class="form-group">
                <label for="medicineName">Medicine Name</label>
                <input type="text" class="form-control" id="medicineName" name="medicineName" placeholder="Enter Medicine Name" required>
            </div>
            <div class="form-group">
                <label for="Price">Price</label>
                <input type="text" class="form-control" id="Price" name="Price" placeholder="Enter Price" onkeyup="validate(this.value)" required>
                <span id="s"></span>
            </div>
            <div class="form-group">
                <label for="Manufacture">Manufacture Date</label>
                <input type="date" class="form-control" id="Manufacture" name="Manufacture" placeholder="Enter Year-Month-Date" required>
            </div>
            <div class="form-group">
                <label for="Expiry">Expiry Date</label>
                <input type="date" class="form-control" id="Expiry" name="Expiry" placeholder="Enter Year-Month-Date" required>
            </div>
            <button type="submit" name="s" class="btn btn-primary">Submit</button>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
