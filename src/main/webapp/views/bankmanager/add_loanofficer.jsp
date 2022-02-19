
<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">Add Loan Officer</h5>
			<button type="button" class="btn-close" data-mdb-dismiss="modal"
				aria-label="Close"></button>
		</div>
		<div class="modal-body">
			<span>${msg }</span>
			<form method="post" action="/submitlo" modelAttribute="lo"
				align="center">

				
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Officer Name</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="officername" name="officername"
							class="form-control" Placeholder="Enter Loan Officer Name" required>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Officer Email</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="email" name="email" class="form-control"
							Placeholder="Enter Loan Officer Email" required>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Officer Phone No</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="phonenumber" name="phonenumber"
							class="form-control"
							Placeholder="Enter Loan Officer Phone Number" required>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Officer DOB</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="Date" id="dob" name="dob" class="form-control"
							Placeholder="Enter Loan Officer DateOfBirth" required>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Officer Address</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="address" name="address"
							class="form-control" Placeholder="Enter Loan Officer Address" required>
					</div>
				</div>
				
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Officer Loan Type</label>
					</div>
					<div class="col-md-8 align-self-center">
						<select class="form-select" id="loantype" name="loantype" required>
							<option value="" disabled selected>Select Loan Officer
								LoanType</option>
							<option value="Education">Education</option>
							<option value="Personal">Personal</option>
							<option value="House Loan">House Loan</option>
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











