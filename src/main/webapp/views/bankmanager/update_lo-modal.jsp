
<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">Add Loan Officer</h5>
			<button type="button" class="btn-close" data-mdb-dismiss="modal"
				aria-label="Close"></button>
		</div>
		<div class="modal-body">
			<span>${msg }</span>
			<form method="post" action="/loanofficer/update" modelAttribute="lo"
				align="center">

				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Officer Id</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" class="form-control" id="officerid" value="${lo.getOfficerid() }"
							name="officerid" Placeholder="Enter Loan Officer ID">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Officer Name</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="officername" name="officername" value="${lo.getOfficername() }"
							class="form-control" Placeholder="Enter Loan Officer Name">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Officer Email</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="email" name="email" class="form-control" value="${lo.getEmail() }"
							Placeholder="Enter Loan Officer Email">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Officer Phone No</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="phonenumber" name="phonenumber" value="${lo.getPhonenumber() }"
							class="form-control"
							Placeholder="Enter Loan Officer Phone Number">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Officer DOB</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="Date" id="dob" name="dob" class="form-control" value="${lo.getDob() }"
							Placeholder="Enter Loan Officer DateOfBirth">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Officer Address</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="address" name="address" value="${lo.getAddress() }"
							class="form-control" Placeholder="Enter Loan Officer Address">
					</div>
				</div>
				
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Officer Loan Type</label>
					</div>
					<div class="col-md-8 align-self-center">
						<select class="form-select" id="loantype" name="loantype" value="${lo.getLoantype() }">
							<option  disabled selected>Select Loan Officer
								LoanType</option>
							<option value="Education">Education</option>
							<option value="Personal">Personal</option>
							<option value="House Loan">House Loan </option>
						</select>
					</div>
				</div>

				<input type="submit" class="btn btn-info mt-3"
					data-mdb-toggle="modal" data-mdb-target="#exampleModal"
					value="Add Loan Officer">

			</form>
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-danger" data-mdb-dismiss="modal">Close</button>

		</div>
	</div>
</div>




