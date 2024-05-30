<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page
	import="org.hospital.admin.service.*,org.hospital.admin.model.*,java.util.*"%>
<form id="inputForm" name="frm"  action="a" method="post">
    <h5 id="formTitle">Popup Form</h5>
    <div class="form-group">
      
      <input type="hidden" id="patientId" name="patientId" value="">
    </div>
    <div class="form-group">
		<label for="department">Doctor Name</label> <select
			class="form-control" style="width: 90%;" id="doctname"
			name="doctname"  required>
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
	<div class="row">
	    <div class=col-md-6>
	          <button type="submit" class="btn btn-primary " style="margin-top:23rem;">Submit</button>
	    </div>
	    <div class=col-md-6>
	          <button type="button" class="btn btn-secondary" onclick="closePopup()" style="margin-top:23rem;">Close</button>
	    </div>
	</div>
    
  
  </form>