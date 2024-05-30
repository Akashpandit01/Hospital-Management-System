<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.hospital.admin.service.*,java.util.*,org.hospital.admin.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Invoice</title>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 20px;
}
h2 {
    margin-bottom: 20px;
    text-align: center;
      margin-left: 10%;
}
table {
    width: 50%;
    border-collapse: collapse;
    margin-bottom: 20px;
    align-items: center;
    margin-left: 20%;
}
table, th, td {
    border: 1px solid #ddd;
}
th, td {
    padding: 8px;
    text-align: left;
}
th {
    background-color: #f2f2f2;
}
.total {
    font-weight: bold;
    background-color: #f2f2f2;
}
.patient-name {
    font-size: 20px;
    font-weight: bold;
    margin-bottom: 10px;
    margin-left: 20%;
}
</style>
</head>
<body>
    <h2>Invoice</h2>
    <div class="patient-name">
        Patient Name: <%
            String patientName = (String) request.getAttribute("patientName");
            out.println(patientName);
        %>
    </div>
    <table border="1">
        <tr>
            <th>Medicine Name</th>
            <th>Quantity</th>
            <th>Price</th>
        </tr>
        <%
            List<MedicineInvoiceModel> invoices = (List <MedicineInvoiceModel>) request.getAttribute("invoices");
            if (invoices != null) {
                int totalPrice = 0;
                for (MedicineInvoiceModel invoice : invoices) {
                    out.println("<tr>");
                    out.println("<td>" + invoice.getMedicineName() + "</td>");
                    out.println("<td>" + invoice.getQuantity() + "</td>");
                    out.println("<td>" + invoice.getPrice() + "</td>");
                    out.println("</tr>");
                    totalPrice += invoice.getPrice();
                }
                out.println("<tr class='total'><td colspan='2'>Total</td><td>" + totalPrice + "</td></tr>");
            } else {
                out.println("<tr><td colspan='4'>No data available</td></tr>");
            }
        %>
    </table>
</body>
</html>