<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>View All Loan Officers</title>
<link href="../../styles.css" rel="stylesheet">

<jsp:include page="../css/links.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="bmnavbar.jsp"></jsp:include>
	<br>
	<h2 align=center>View All Loan Officers Records</h2>
	<div class="container-fluid">
		<table align=center border=1
			class="table  table-bordered  table-sm table-striped">
			<thead class="table-info">
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>EMAIL</th>
					<th>PHONE NUMBER</th>
					<th>DOB</th>
					<th>ADDRESS</th>
					<th>LOAN TYPE</th>
					<th>RECENT LOGIN</th>
					<th>No.Of Logins</th>
					<th>Active Status</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<c:forEach var="lo" items="${loanofficers}">
				<tr>
					<td>${lo.officerid}</td>
					<td>${lo.officername}</td>
					<td>${lo.email}</td>
					<td>${lo.phonenumber}</td>
					<td>${lo.dob}</td>
					<td>${lo.address}</td>
					<td>${lo.loantype}</td>
					<td>${lo.recentlogin}</td>
					<td>${lo.nologins}</td>
					<td>${lo.activestatus}</td>
					<td><a href="/updateloanofficer/${lo.officerid}"
						class="btn btn-primary"><i class="fas fa-edit"></i></a></td>
					<td><a href="/loanofficer/delete/${lo.officerid}" class="btn btn-danger"
						type="button" class="btn btn-primary"><!--  data-mdb-toggle="modal"
						data-mdb-target="#exampleModal"> --> <i class="fas fa-trash"></i></a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Delete
						Confirmation</h5>
					<button type="button" class="btn-close" data-mdb-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<h4>Are Sure You Want to Delete??</h4>
					<p class="note note-danger">
						<strong>Note:</strong> If You Click on Yes Record will be deleted
						permenantly Think Twice to and Click on Yes
					</p>
				</div>
				<div class="modal-footer">

					<a href="/loanofficer/delete/${lo.officerid}"><button
							type="button" class="btn btn-success" data-mdb-dismiss="modal">Yes</button></a>

					<button type="button" class="btn btn-danger">No</button>
				</div>
			</div>
		</div>
	</div>



	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>