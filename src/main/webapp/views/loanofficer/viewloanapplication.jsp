<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply Loan</title>
<link href="../../styles.css" rel="stylesheet">

<jsp:include page="../css/links.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="lonavbar.jsp"></jsp:include>
	<div class="section-title">
		<h1>Personal Loan Application</h1>
	</div>
					<div class="row col-md " align="center">

					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Loanid</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="accountNumber"
								value="${loan.loanid }" name="accountNumber"
								Placeholder="Enter Account Number" readonly>
						</div>
					</div>
					 
				</div>
	
	<div class="container	">
		<div class="modal-header">
			<h5 class="modal-title">
				<i class="fas fa-user pe-3"></i>Personal Details
			</h5>
			Check Your Details Carefully and Proced Further

		</div>

		<div class="modal-body">
			<span>${msg }</span>
			<form  
				 name="myForm" align="center">

				<div class="row col-md">

					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Account Number</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="accountNumber"
								value="${loan.accountNumber }" name="accountNumber"
								Placeholder="Enter Account Number" readonly>
						</div>
					</div>
					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Customer Name</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="customerName"
								value="${loan.customerName }" name="customerName"
								Placeholder="Enter Name" readonly>
						</div>
					</div>
				</div>
				<br>
				<div class="row col-md">

					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Email</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="email"
								value="${loan.email }" name="email" Placeholder="Enter Email"
								readonly>
						</div>
					</div>
					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Phone Number</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="phonenumber"
								value="${phoneNumber }" name="phonenumber"
								Placeholder="Enter PhoneNumber" readonly>
						</div>
					</div>
				</div>
				<br>
				<div class="row col-md">

					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">DateofBirth</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="dob"
								value="${loan.dob }" name="dob" Placeholder="Enter DateofBirth"
								readonly>
						</div>
					</div>
					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Address</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="address"
								value="${loan.address }" name="address"
								Placeholder="Enter Address" readonly>
						</div>
					</div>
				</div>

				<div class="modal-header">
					<h5 class="modal-title">
						<i class="fas fa-user pe-3"></i>Submitted Document Details
					</h5>

				</div>
				<br>
				<div class="row col-md">
					<div class="row col-md-5">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Id Type</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="aadhartype"
								value="${loan.aadhartype }" name="aadhartype"
								Placeholder="Enter Aadhar Number" readonly>
						</div>
					</div>
					<div class="row col-md-5">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Id Number</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="aadharno"
								value="${loan.aadharno }" name="aadharno"
								Placeholder="Enter Aadhar Number" readonly>
						</div>
					</div>
					<div class="row col-md-2">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">View Pdf</label>
						</div>
						<div class="col-md-8 align-self-center">
							<button type="button" class="btn btn-primary"
								data-mdb-toggle="modal" data-mdb-target="#exampleModal">
								<i class="fas fa-eye"></i>
							</button>
							
							<div class="modal fade" id="exampleModal" tabindex="-1"
								aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Modal
												title</h5>
											<button type="button" class="btn-close"
												data-mdb-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<embed src="/uploads/${loan.proofupload}" width="800px"
												height="800px" />
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-mdb-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">Save
												changes</button>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>

				<br>
				<div class="row col-md">
					<div class="row col-md-5">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Id Type</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="incometype"
								value="${loan.incometype }" name="incometype"
								Placeholder="Enter Aadhar Number" readonly>
						</div>
					</div>
					<div class="row col-md-5">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Id Number</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="incomeid"
								value="${loan.incomeid }" name="incomeid"
								Placeholder="Enter Aadhar Number" readonly>
						</div>
					</div>
					<div class="row col-md-2">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">View Pdf</label>
						</div>
						<div class="col-md-8 align-self-center">
							<button type="button" class="btn btn-primary"
								data-mdb-toggle="modal" data-mdb-target="#exampleModal">
								<i class="fas fa-eye"></i>
							</button>

							<div class="modal fade" id="exampleModal" tabindex="-1"
								aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Modal
												title</h5>
											<button type="button" class="btn-close"
												data-mdb-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<embed src="/uploads/${loan.proofupload}" width="800px"
												height="800px" />
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-mdb-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">Save
												changes</button>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>

				<br>
				<div class="row col-md">
					<div class="row col-md-5">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Id Type</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="prooftype"
								value="${loan.prooftype }" name="prooftype"
								Placeholder="Enter Aadhar Number" readonly>
						</div>
					</div>
					<div class="row col-md-5">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Id Number</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="proofid"
								value="${loan.proofid }" name="proofid"
								Placeholder="Enter Aadhar Number" readonly>
						</div>
					</div>
					<div class="row col-md-2">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">View Pdf</label>
						</div>
						<div class="col-md-8 align-self-center">
							<button type="button" class="btn btn-primary"
								data-mdb-toggle="modal" data-mdb-target="#exampleModal">
								<i class="fas fa-eye"></i>
							</button>

							<div class="modal fade" id="exampleModal" tabindex="-1"
								aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Modal
												title</h5>
											<button type="button" class="btn-close"
												data-mdb-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<embed src="/uploads/${loan.proofupload}" width="800px"
												height="800px" />
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-mdb-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">Save
												changes</button>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>




				<div class="modal-header">
					<h5 class="modal-title">
						<i class="fas fa-user pe-3"></i>Loan Details
					</h5>

				</div>
				<br>
				<div class="row col-md">

					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Identity Type</label>
						</div>
						<div class="col-md-8 align-self-center" >
							<select disabled class="form-select" id="loantype" name="loantype">
								<option value="${lo.getLoantype() }" disabled>Select
									Type of Loan</option>
								<option value="Personal" selected>Personal</option>
								<option value="Education">Education</option>
								<option value="Home">Home</option>
							</select>
						</div>
					</div>
					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Requested Amount</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="requestedamount"
								name="requestedamount"
								Placeholder="Enter Requested Loan Ammount"
								value="${loan.requestedamount }" readonly>
						</div>
					</div>
				</div>
				<br>
				<div class="row col-md">

					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Collateral</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="collaterals"
								name="collaterals" Placeholder="Enter Loan Collaterals"
								value="${loan.collaterals }" readonly>
						</div>
					</div>
					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Reason For Loan </label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="reasonforloan"
								value="${loan.reasonforloan}" name="reasonforloan"
								Placeholder="Enter Loan Purpose " readonly>
						</div>
					</div>
				</div>
				<br>

				<div class="modal-header">
					<h5 class="modal-title">
						<i class="fas fa-user pe-3"></i>Acknoledgement
					</h5>

				</div>
				<div>
					<p>I thorouglly verified the all loan details and identity proofs submited by customer </p>
				</div>
				<div>
					<input class="form-check-input" type="checkbox" value=""
						id="flexCheckDefault" /> <label class="form-check-label"
						for="flexCheckDefault"> I Awcknoledge <u><a>Terms and
								Conditions</a></u>
					</label>
				</div>
				<br> 
					<a href="/acceptloan" class="btn btn-primary">Accept</a>
			</form>
		</div>

	</div>





	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>