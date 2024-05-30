

<center><h4 style="color:white;">Add Department</h4></center>
<form name='frm' method='POST' action='addDept' id="submitForm" style="height:70vh;">
			<div class="form-group">
				<label for="deptName">Department Name</label>   <span id="Name" style="padding-left:3vh;"></span>
				 <input
					type="text" class="form-control" id="deptName" name="deptName" placeholder="Enter department name"  onkeyup='validateInput(this.value)'  required>
			</div>
			<div class="form-group">
					<label for="charges">Default Charges</label>  <span id="charge" style="padding-left:3vh;"></span>
					<input
						type="text" class="form-control" id="charges"
						name="charges" placeholder="Enter default charges in rupee"  onkeyup='validateInputCharges(this.value)'   required>
			</div>
								
			<button type="submit" name="s" class="btn btn-primary" style="margin-top:17rem;">Submit</button>
</form>