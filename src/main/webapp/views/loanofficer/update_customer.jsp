
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Update Customer</title>
<link href="../../styles.css" rel="stylesheet">

<jsp:include page="../css/links.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="lonavbar.jsp"></jsp:include>
	<br>
	<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">Add Customer</h5>
			<a href="/viewcustomers"><button type="button" class="btn-close" data-mdb-dismiss="modal"
				aria-label="Close"></button></a>
		</div>
		<div class="modal-body">
			<span>${msg }</span>
			<form method="post" action="/customer/update" modelAttribute="cu"
				align="center">

				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber"> Account Number</label>
					</div>
					<div class="col-md-8 align-self-center">
							<input type="text" id="accountNumber" name="accountNumber" class="form-control" value="${cu.getAccountNumber() }" Placeholder="Enter customer Account No">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Customer Name</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="customerName" class="form-control" value="${cu.getCustomerName() }" name="customerName" Placeholder="Enter customer Name">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Customer Email</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="email" name="email" class="form-control" value="${cu.getEmail() }" Placeholder="Enter customer Email">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Customer PhoneNo</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="phonenumber" name="phonenumber" class="form-control" value="${cu.getPhoneNumber() }" Placeholder="Enter customer Phone Number">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Customer DOB</label>
					</div>
					<div class="col-md-8 align-self-center">
							 <input type="Date" id="dob" name="dob" class="form-control" value="${cu.getDob() }" Placeholder="Enter customer DateOfBirth">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Customer Address</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="address" name="address" class="form-control" value="${cu.getAddress() }" Placeholder="Enter customer Address">
					</div>
				</div>
				
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber"> ID Proof Type</label>
					</div>
					<div class="col-md-8 align-self-center">
						<select class="form-select" id="idType" name="${cu.getIdType() }">
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
						<input type="text" id="idNumber" class="form-control" name="idNumber" value="${cu.getIdNumber() }" Placeholder="Enter customer IDType number">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Nominee Name</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" id="nominee" class="form-control" name="nominee" value="${cu.getNominee() }" Placeholder="Enter customer Nominee">
					</div>
				</div>

				<input type="submit" class="btn btn-info mt-3"
					data-mdb-toggle="modal" data-mdb-target="#exampleModal"
					value="Update customer">
			</form>
		</div>
		<div class="modal-footer">
			<a href="/viewcustomers"><button type="button" class="btn btn-danger" data-mdb-dismiss="modal">Close</button></a>
		</div>
	</div>
</div>

	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>


















