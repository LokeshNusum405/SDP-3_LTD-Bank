
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Update Loan Officer</title>
<link href="../../styles.css" rel="stylesheet">

<jsp:include page="../css/links.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="bmnavbar.jsp"></jsp:include>
	<br>
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title"><i class="fas fa-user pe-3"></i>Update Loan Officer</h5>
				<a href="/viewloanofficers"><button type="button" class="btn-close" data-mdb-dismiss="modal"
				aria-label="Close"></button></a>
			</div>
			<div class="modal-body">
				<span>${msg }</span>
				<form method="post" action="/loanofficer/update" modelAttribute="lo"
					name="myForm" align="center">

					<div class="row">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Officer Id</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="officerid"
								value="${lo.getOfficerid() }" name="officerid"
								Placeholder="Enter Loan Officer ID" readonly>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Officer Name</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" id="officername" name="officername"
								value="${lo.getOfficername() }" class="form-control"
								Placeholder="Enter Loan Officer Name" required>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Officer Email</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" id="email" name="email" class="form-control"
								value="${lo.getEmail() }" Placeholder="Enter Loan Officer Email" required>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Officer Phone No</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" id="phonenumber" name="phonenumber"
								value="${lo.getPhonenumber() }" class="form-control"
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
								value="${lo.getDob() }"
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
								value="${lo.getAddress() }" class="form-control"
								Placeholder="Enter Loan Officer Address" required>
						</div>
					</div>

					<br>
					<div class="row">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Officer Loan Type</label>
						</div>
						<div class="col-md-8 align-self-center">
							<select class="form-select" id="loantype" name="loantype" required>
								<option value="${lo.getLoantype() }" disabled selected>Select
									Loan Officer LoanType</option>
								<option value="Education">Education</option>
								<option value="Personal">Personal</option>
								<option value="House Loan">House Loan</option>
							</select>
						</div>
					</div>

					<input type="submit" class="btn btn-info mt-3"
						data-mdb-toggle="modal" data-mdb-target="#exampleModal"
						value="Update Loan Officer">

				</form>
			</div>
			<div class="modal-footer">
			<a href="/viewallloanofficers"><button type="button" class="btn btn-danger" data-mdb-dismiss="modal">Close</button></a>
		</div>
		</div>
	</div>

	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>














