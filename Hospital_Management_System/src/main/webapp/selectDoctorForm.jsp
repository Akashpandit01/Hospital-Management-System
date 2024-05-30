<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@page import="org.hospital.admin.service.*,org.hospital.admin.model.*,java.util.*" %>

<%
  String staffid=request.getParameter("patientid");
%>
<center>
	<h5 style="color: white;">Add Staff</h5>
</center>
<form name='frm' method='POST' action='assignDoct' id="submitForm">
	<div class="form-group">
		<label for="patientid"></label>     <span id="Name" style="padding-left:3vh;"></span><input type="hidden"
			class="form-control" id="patientid" name="patientid" value="<%=staffid%>"
			placeholder=""  onkeyup=''  required>
			
	</div>
	

	
	<div class="form-group">
		<label for="department">Doctor Name</label> <select
			class="form-control" style="width: 90%;" id="doctname"
			name="doctname" required>
			<option value="">Select Doctor</option>



			<%
			      addStaffService sService=new addStaffServiceImpl();
			    		List<StaffModel> list1=sService.getAllDoctors();
			    		if(list1!=null)
			    		  {
			    			  for(StaffModel m:list1)
			    			  {
			      %>
			<option value='<%=m.getStaffId()%>'><%= m.getStaffName()%>(<%= m.getSpeciallty()%>)</option>


			<%
			    			  }
			    		  }
			    		
			              %>
		</select>
	</div>

	<button type="submit" name="s" class="btn btn-primary">Submit</button>
</form>