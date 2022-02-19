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
	<jsp:include page="cunavbar.jsp"></jsp:include>
	<div class="section-title">
		<h1>Personal Loan Application</h1>
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
			<form method="post" action="/submitploan" modelAttribute="loan" enctype='multipart/form-data'
				name="myForm" align="center">

				<div class="row col-md">

					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Account Number</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="accountNumber"
								value="${accno }" name="accountNumber"
								Placeholder="Enter Account Number" readonly>
						</div>
					</div>
					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Customer Name</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="customerName"
								value="${name }" name="customerName"
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
								value="${email }" name="email"
								Placeholder="Enter Email" readonly>
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
								value="${dob }" name="dob"
								Placeholder="Enter DateofBirth" readonly>
						</div>
					</div>
					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Address</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="address"
								value="${address }" name="address"
								Placeholder="Enter Address" readonly>
						</div>
					</div>
				</div>

				<div class="modal-header">
					<h5 class="modal-title">
						<i class="fas fa-user pe-3"></i>Identity Details
					</h5>

				</div>
				<br>
				<div class="row col-md">
					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Identity Type</label>
						</div>
						<div class="col-md-8 align-self-center">
							<select class="form-select" id="aadhartype" name="aadhartype" required>
								<option   selected>Select
									Aadhar Proof Type</option>
								<option value="Aadhar" selected>Aadhar</option>
							</select>
						</div>
					</div>
					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Aadhar Number</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="aadharno"
								value="${lo.getOfficerid() }" name="aadharno"
								Placeholder="Enter Aadhar Number" required>
						</div>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-7 align-self-center">
						<h5>
							<label for="formFile" class="form-label">Upload Your
								Aadhar Document Carefully Front and Back(pdf format)</label>
						</h5>
					</div>
					<div class="col-md-5 align-self-center">
						<h5>
							<input class="form-control" name="aadharproof1" type="file"
								id="aadharproof1" required>
						</h5>
					</div>
				</div>
				
				<div class="row col-md">
					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Identity Type</label>
						</div>
						<div class="col-md-8 align-self-center">
							<select class="form-select" id="prooftype" name="prooftype" required>
								<option value="${lo.getLoantype() }" disabled selected>Select
									Proof LoanType</option>
								<option value="Pan">Pan</option>
								<option value="VoterId">VoterId</option>
								<option value="Passport">Passport</option>
							</select>
						</div>
					</div>
					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Proof Number</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="proofid"
								name="proofid"
								Placeholder="Enter Proof Number" required>
						</div>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-7 align-self-center">
						<h5>
							<label for="formFile" class="form-label">Upload Your
								Proof Document Carefully Front and Back(pdf format)</label>
						</h5>
					</div>
					<div class="col-md-5 align-self-center">
						<h5>
							<input class="form-control" name="proofupload1" type="file"
								id="proofupload1" required>
						</h5>
					</div>
				</div>
				
				<br>
				<div class="row col-md">
					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Identity Type</label>
						</div>
						<div class="col-md-8 align-self-center">
							<select class="form-select" id="incometype" name="incometype" required>
								<option   selected>Select
									Income Proof </option>
								<option value="Income" selected>Income</option>
							</select>
						</div>
					</div>
					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Income Number</label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="incomeid"
								 name="incomeid"
								Placeholder="Enter Income Number" required>
						</div>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-7 align-self-center">
						<h5>
							<label for="formFile" class="form-label">Upload Your
								Income Proof Document Carefully Front and Back(pdf format)</label>
						</h5>
					</div>
					<div class="col-md-5 align-self-center">
						<h5>
							<input class="form-control" name="incomeproof1" type="file"
								id="incomeproof1" required>
						</h5>
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
							<label for="phoneNumber">Loan Type</label>
						</div>
						<div class="col-md-8 align-self-center">
							<select class="form-select" id="loantype" name="loantype" required>
								<option value="${lo.getLoantype() }" disabled >Select
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
								Placeholder="Enter Requested Loan Ammount" required>
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
								 name="collaterals"
								Placeholder="Enter Loan Collaterals" required>
						</div>
					</div>
					<div class="row col-md-6">
						<div class="col-md-4 align-self-center">
							<label for="phoneNumber">Reason For Loan </label>
						</div>
						<div class="col-md-8 align-self-center">
							<input type="text" class="form-control" id="reasonforloan"
								value="${lo.getOfficerid() }" name="reasonforloan"
								Placeholder="Enter Loan Purpose " required>
						</div>
					</div>
				</div>
				<br>
		
		<div class="modal-header">
			<h5 class="modal-title">
				<i class="fas fa-user pe-3"></i>Declaration
			</h5>

		</div>
		<div>
		<p>
		In support of my loan application, I set out the above information, which is true to the best of my knowledge. I understand that if any of the information I have provided proves to be faise, it will lead to the automatic decline of my application. If it is found out that any of the information I have provided proves to be false after disbursement, Proseed has the right to call back the loan. I consent to Proseed, in connection with this loan application, making such enquiries about my affair as it deems fits. I will also be available for further discussions upon request.
		</p>
		</div>
<div >
  <input
    class="form-check-input"
    type="checkbox"
    value=""
    id="flexCheckDefault"
  required/>
  <label class="form-check-label" for="flexCheckDefault">
    I agree <u><a>Terms and Conditions</a></u>
  </label>
</div>
				<br>
				<input type="submit" class="btn btn-info mt-3" value="Apply Loan">
			</form>
		</div>
		
	</div>





	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>