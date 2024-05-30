<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prescription Form</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
       
    
        .medicine-form {
            border: 0.0625rem solid #ced4da; /* 1px converted to rem */
            padding: 0.625rem; /* 10px converted to rem */
            border-radius: 0.3125rem; /* 5px converted to rem */
            margin-bottom: 0.3rem; /* 20px converted to rem */
           
            box-shadow: 0px 0px 0.625rem 0px rgba(0,0,0,0.1); /* 10px converted to rem */
            animation: slideIn 0.5s ease-out;

            
            background-color: #f9f9f9;
            transition: background-color 0.3s ease;
        }
         
        .btn-block 
        {
        
              width: 58%;
         }
        .form-control {
            width: 100%;
        }
    
        #result {
            display: none;
        }
    
        #result p {
            background-color: #d4edda;
            padding: 0.9375rem; /* 15px converted to rem */
            border-radius: 0.3125rem; /* 5px converted to rem */
            color: #155724;
        }
    
        .prescription-detail {
            padding: 0.7375rem; /* 15px converted to rem */
            border-radius: 0.3125rem; /* 5px converted to rem */
            margin-bottom: 1.25rem; /* 20px converted to rem */
            color: #155724;
            background-color: #f8f9fa;
            box-shadow: 0px 0px 0.625rem 0px rgba(0,0,0,0.1); /* 10px converted to rem */
        }
    
        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(-1.25rem); /* 20px converted to rem */
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    
        .add-remove-buttons {
            margin-top: 1.25rem; /* 20px converted to rem */
        }
    
        .add-remove-buttons button {
            width: 100%;
            transition: all 0.3s ease;
        }
    
        
    
        .submit-button {
            margin-top: 1.25rem; /* 20px converted to rem */
        }
    
        .submit-button button {
            width: 100%;
            transition: all 0.3s ease;
        }
    
       
        
        body {
            background-color: #f3f3f3;
            font-family: 'Roboto', sans-serif;
        }

        h2 {
            margin-bottom: 10px;
            text-align: center;
            color: #333;
            text-transform: uppercase;
            font-weight: bold;
            letter-spacing: 2px;
            animation: slideInDown 1s ease;
        }

        .container {
            background-color: #fff;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s ease;
        }

        .container:hover {
            box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
        }

       
        .medicine-form:hover {
            background-color: #f0f0f0;
        }

        .form-group label {
            font-weight: bold;
            color: #555;
            letter-spacing: 1px;
            transition: color 0.3s ease;
        }

        .form-group input[type="text"],
        .form-group input[type="number"] {
            width: 100%;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: border-color 0.3s ease;
        }

        .form-group input[type="text"]:focus,
        .form-group input[type="number"]:focus {
            border-color: #007bff;
        }

        .remove-button button {
            width: 100%;
            transition: transform 0.2s ease;
        }

        .remove-button button:hover {
            transform: translateY(-3px);
        }

        button[type="button"] {
            margin-top: 1px;
            padding: 6px 14px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        button[type="button"]:hover {
            background-color: #484849;
            color: #fff;
        }

        button[type="submit"] {
            padding: 6px 14px;
            font-size: 16px;
            
            
            color: #fff;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        

        @keyframes slideInDown {
            0% {
                transform: translateY(-100%);
            }

            100% {
                transform: translateY(0);
            }
        }
        
        #removes:hover {
            background-color: #dc3545;
            border-color: #dc3545;
        }
    
    
    </style>
    
</head>
<body>
    
<div class="container mt-5">
    <h2>Prescription Form</h2>
    <form id="prescriptionForm">
       <div class="row">
       
        <div class="form-group col-md-6">
            <label for="patientName">Patient Name</label>
            <input type="hidden" class="form-control" id="patientName" name="patientName" required>
        </div>
        <div class="form-group col-md-6">
            <label for="doctorName">Doctor Name</label>
            <input type="hidden" class="form-control" id="doctorName" name="doctorName" required>
        </div>
        </div>
        <div id="medicineList">
            <div class="form-group row medicine-entry">
                <div class="col-md-4">
                    <input type="text" class="form-control" name="medicineName[]" placeholder="Medicine Name" required>
                </div>
                <div class="col-md-3">
                    <input type="text" class="form-control" name="dosage[]" placeholder="Dosage" required>
                </div>
                <div class="col-md-3">
                    <input type="text" class="form-control" name="frequency[]" placeholder="Frequency" required>
                </div>
                <div class="col-md-2">
                    <button type="button" class="btn btn-danger remove-medicine">Remove</button>
                </div>
            </div>
        </div>
        <button type="button" class="btn btn-primary" id="addMedicine">Add Medicine</button>
        <button type="submit" class="btn btn-success">Submit</button>
    </form>
    <div id="prescriptionInfo" class="mt-5">
        <h3>Prescription Information</h3>
        <p id="patientInfo"></p>
        <p id="doctorInfo"></p>
        <p id="dateInfo"></p>
        <div id="prescriptionDetails"></div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function() {
    // Add new medicine entry
    $('#addMedicine').click(function() {
        const newEntry = `<div class="form-group row medicine-entry">
            <div class="col-md-4">
                <input type="text" class="form-control" name="medicineName[]" placeholder="Medicine Name" required>
            </div>
            <div class="col-md-3">
                <input type="text" class="form-control" name="dosage[]" placeholder="Dosage" required>
            </div>
            <div class="col-md-3">
                <input type="text" class="form-control" name="frequency[]" placeholder="Frequency" required>
            </div>
            <div class="col-md-2">
                <button type="button" class="btn btn-danger remove-medicine">Remove</button>
            </div>
        </div>`;
        $('#medicineList').append(newEntry);
    });

    // Remove medicine entry
    $(document).on('click', '.remove-medicine', function() {
        $(this).closest('.medicine-entry').remove();
    });

    // Handle form submission
    $('#prescriptionForm').submit(function(event) {
        event.preventDefault();
        let prescriptionDetails = '';
        $('.medicine-entry').each(function() {
            const name = $(this).find('input[name="medicineName[]"]').val();
            const dosage = $(this).find('input[name="dosage[]"]').val();
            const frequency = $(this).find('input[name="frequency[]"]').val();
            prescriptionDetails += `<p>Medicine: ${name}, Dosage: ${dosage}, Frequency: ${frequency}</p>`;
        });
        const patientName = $('#patientName').val();
        const doctorName = $('#doctorName').val();
        const today = new Date();
        const dateInfo = `Date: ${today.toLocaleDateString()}, Time: ${today.toLocaleTimeString()}`;
        $('#patientInfo').text(`Patient Name: ${patientName}`);
        $('#doctorInfo').text(`Doctor Name: ${doctorName}`);
        $('#dateInfo').text(dateInfo);
        $('#prescriptionDetails').html(prescriptionDetails);
        $('#prescriptionInfo').show(); // Show prescription info before printing
       // window.print();
    });
});
</script>
</body>
</html>
