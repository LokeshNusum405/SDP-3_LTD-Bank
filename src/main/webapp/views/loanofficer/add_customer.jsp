
<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">Add Customer</h5>
			<button type="button" class="btn-close" data-mdb-dismiss="modal"
				aria-label="Close"></button>
		</div>
		<div class="modal-body">
			<span>${msg }</span>
			<form method="post" action="/submitcu" modelAttribute="cu"
				align="center">

			
				
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Customer Name</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="customerName" class="form-control" name="customerName" Placeholder="Enter customer Name" required>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Customer Email</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="email" name="email" class="form-control" Placeholder="Enter customer Email" required>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Customer PhoneNo</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="phonenumber" name="phonenumber" class="form-control" Placeholder="Enter customer Phone Number" required>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Customer DOB</label>
					</div>
					<div class="col-md-8 align-self-center">
							 <input type="Date" id="dob" name="dob" class="form-control" Placeholder="Enter customer DateOfBirth" required>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Customer Address</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="address" name="address" class="form-control" Placeholder="Enter customer Address" required>
					</div>
				</div>
				
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber"> ID Proof Type</label>
					</div>
					<div class="col-md-8 align-self-center">
						<select class="form-select" id="idType" name="idType" required>
							<option value="" disabled selected>Select Proof Type</option>
							<option value="Aadhar">Aadhar</option>
							<option value="Pan">Pan</option>
							<option value="Passport">Passport</option>
						</select>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Customer Id Type</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="idNumber" class="form-control" name="idNumber" Placeholder="Enter customer IDType number" required>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Nominee Name</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="nominee" class="form-control" name="nominee" Placeholder="Enter customer Nominee" required>
					</div>
				</div>

				<input type="submit" class="btn btn-info mt-3"
					data-mdb-toggle="modal" data-mdb-target="#exampleModal"
					value="Add customer">
			</form>
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-danger" data-mdb-dismiss="modal">Close</button>
		</div>
	</div>
</div>

