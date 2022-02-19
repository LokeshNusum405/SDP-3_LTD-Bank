<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Home</title>
<link href="../../styles.css" rel="stylesheet">

<jsp:include page="../css/links.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="cunavbar.jsp"></jsp:include>
	<br>

	<div class="container">
		<div class=" modal-body">
			<div class="row col-md">
				<div class="row col-md-4">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Loan Id</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" class="form-control" id="aadharno"
							value="${loan.loanid }" name="aadharno"
							Placeholder="Enter Aadhar Number" readonly>
					</div>
				</div>
				<div class="row col-md-4">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Account No</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" class="form-control" id="aadharno"
							value="${loan.accountNumber }" name="aadharno"
							Placeholder="Enter Aadhar Number" readonly>
					</div>
				</div>
				<div class="row col-md-4">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Name</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" class="form-control" id="aadharno"
							value="${loan.customerName }" name="aadharno"
							Placeholder="Enter Aadhar Number" readonly>
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
						<input type="text" class="form-control" id="aadharno"
							value="${loan.aadhartype }" name="aadharno"
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
						<label for="phoneNumber">View</label>
					</div>
					<div class="col-md-8 align-self-center">
						<button type="button" class="btn btn-primary"
							data-mdb-toggle="modal" data-mdb-target="#exampleModal1">
							<i class="fas fa-eye"></i>
						</button>

						<div class="modal fade" id="exampleModal1" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content" style="width: 100%">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Income
											Proof</h5>
										<button type="button" class="btn-close"
											data-mdb-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<embed src="/uploads/${loan.incomeproof}" width="450px"
											 />
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-danger"
											data-mdb-dismiss="modal">Close</button>
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
						<label for="phoneNumber">Other Id Proof</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" class="form-control" id="aadharno"
							value="${loan.prooftype }" name="aadharno"
							Placeholder="Enter Aadhar Number" readonly>
					</div>
				</div>
				<div class="row col-md-5">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Id Number</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" class="form-control" id="aadharno"
							value="${loan.proofid }" name="aadharno"
							Placeholder="Enter Aadhar Number" readonly>
					</div>
				</div>
				<div class="row col-md-2">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">View</label>
					</div>
					<div class="col-md-8 align-self-center">
						<button type="button" class="btn btn-primary"
							data-mdb-toggle="modal" data-mdb-target="#exampleModal">
							<i class="fas fa-eye"></i>
						</button>

						<div class="modal fade" id="exampleModal" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content" style="width: 100%">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Aadhar
											Proof</h5>
										<button type="button" class="btn-close"
											data-mdb-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<embed src="/uploads/${loan.proofupload}" width="450px"
											 />
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-danger"
											data-mdb-dismiss="modal">Close</button>
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
						<input type="text" class="form-control" id="aadharno"
							value="${loan.incometype }" name="aadharno"
							Placeholder="Enter Aadhar Number" readonly>
					</div>
				</div>
				<div class="row col-md-5">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">Id Number</label>
					</div>
					<div class="col-md-8 align-self-center">
						<input type="text" class="form-control" id="aadharno"
							value="${loan.incomeid }" name="aadharno"
							Placeholder="Enter Aadhar Number" readonly>
					</div>
				</div>
				<div class="row col-md-2">
					<div class="col-md-4 align-self-center">
						<label for="phoneNumber">View</label>
					</div>
					<div class="col-md-8 align-self-center">
						<button type="button" class="btn btn-primary"
							data-mdb-toggle="modal" data-mdb-target="#exampleModal2">
							<i class="fas fa-eye"></i>
						</button>

						<div class="modal fade" id="exampleModal2" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content" style="width: 100%">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">IncomeProof
											Proof</h5>
										<button type="button" class="btn-close"
											data-mdb-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<embed src="/uploads/${loan.incomeproof}" width="450px"
											 />
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-danger"
											data-mdb-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<a href="/viewloanstatus" class="btn btn-primary"> Goto View Loan Statuses</a>
			
		</div>
	</div>



	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>