<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@page import="org.hospital.admin.service.*,org.hospital.admin.model.*,java.util.*" %>


<center>
	<h5 style="color: white;">Add Staff</h5>
</center>
<form name='frm' method='POST' action='addStaff' id="submitForm">
	<div class="form-group">
		<label for="staffName">Staff Name</label>     <span id="Name" style="padding-left:3vh;"></span><input type="text"
			class="form-control" id="staffName" name="staffName"
			placeholder="Enter staff name"  onkeyup='validateInput(this.value)'  required>
			
	</div>
	<div class="form-group">
		<label for="designation">Designation</label>   <span id="designation" style="padding-left:3vh;"></span>
		<input type="text"
			class="form-control" id="designation" name="designation" onkeyup="validateInput2(this.value)"
			placeholder="Enter designation" required>
			
	</div>

	<div class="form-group">
		<label for="specialty">Specialty</label>   <span id="specialty" style="padding-left:3vh;"></span>
		 <input type="text"
			class="form-control" id="specialty" name="specialty" onkeyup="validateInput1(this.value)"
			placeholder="Enter specialty" required>
			
	</div>

	<div class="form-group">
		<label for="address">Address</label> <input type="text"
			class="form-control" id="Address" name="address"
			placeholder="Enter address" required>
	</div>

	<div class="form-group">
		<label for="contact">Contact</label>    <span id='Contact' style="padding-left:3vh;"></span> <input type="text"
			class="form-control" id="contact" name="contact" onkeyup="validatenum(this.value)"
			placeholder="Enter contact" required>
			 
	</div>

	<div class="form-group">
		<label for="department">Department</label> <select
			class="form-control" style="width: 90%;" id="department"
			name="department" required>
			<option value="">Select department</option>



			<%
			      addDeptService dService=new addDeptServiceImpl();
			    		List<DepartmentModel> list1=dService.getAllDepartments();
			    		if(list1!=null)
			    		  {
			    			  for(DepartmentModel m:list1)
			    			  {
			      %>
			<option value='<%=m.getDeptId()%>'><%=m.getDeptName()%></option>


			<%
			    			  }
			    		  }
			    		
			              %>
		</select>
	</div>

	<button type="submit" name="s" class="btn btn-primary">Submit</button>
</form>