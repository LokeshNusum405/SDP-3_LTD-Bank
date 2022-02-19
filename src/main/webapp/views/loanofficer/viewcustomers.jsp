
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>View All Customers</title>
<link href="../../styles.css" rel="stylesheet">

<jsp:include page="../css/links.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="lonavbar.jsp"></jsp:include>
	<br>

	<h2 align=center>View All Customer Records</h2>

	<div class="container-fluid">
		<br>
		<div class="row">
			<div class="col-lg-2">
				<input type="text" id="myInput" class="form-control"
					onkeyup="myFunction()" placeholder="Search By Account" size="20"
					height="48">
			</div>
			<div class="col-lg-2">
				<input type="text" id="myInput1" class="form-control"
					onkeyup="myFunction1()" placeholder="Search By Name" size="20"
					height="48">
			</div>
		</div>
		<br>
		<table align=center border=1
			class="table table-striped table-bordered" style="width: 100%"
			id="customers">
			<thead class="table-info">
				<tr>
					<th>ACCOUNT NUMBER</th>
					<th>NAME</th>
					<th>EMAIL</th>
					<th>PHONE NUMBER</th>
					<!-- <th>DOB</th> -->
					<th>ADDRESS</th>
					<th>ID TYPE</th>
					<th>ID NUMBER</th>
					<th>NOMINEE</th>
					<th>RECENT LOGIN</th>
					<th>No.Of Logins</th>
					<th>Active Status</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>

			</thead>
			<c:forEach var="cu" items="${customers}">
				<tr>
					<td>${cu.accountNumber}</td>
					<td>${cu.customerName}</td>
					<td>${cu.email}</td>
					<td>${cu.phoneNumber}</td>
					<!-- <td>${cu.dob}</td> -->
					<td>${cu.address}</td>
					<td>${cu.idType}</td>
					<td>${cu.idNumber}</td>
					<td>${cu.nominee}</td>
					<td>${cu.recentlogin}</td>
					<td>${cu.nologins}</td>
					<td>${cu.activestatus}</td>
					<td><a href="/updatecustomer/${cu.accountNumber}"
						class="btn btn-primary"><i class="fas fa-edit"></a></td>
					<td><a href="/customer/delete/${cu.accountNumber}"
						class="btn btn-danger"> <!-- class="btn btn-primary"
  data-mdb-toggle="modal"
  data-mdb-target="#exampleModal" --> <i class="fas fa-trash"></i></a></td>
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

					<a href="/loanofficer/delete/${cu.accountNumber}"><button
							type="button" class="btn btn-success" data-mdb-dismiss="modal">Yes</button></a>

					<button type="button" class="btn btn-danger">No</button>
				</div>
			</div>
		</div>
	</div>



	<jsp:include page="../footer.jsp"></jsp:include>
	<script>
		function myFunction() {
			// Declare variables
			var input, filter, table, tr, td, i, txtValue;
			input = document.getElementById("myInput");
			filter = input.value.toUpperCase();
			table = document.getElementById("customers");
			tr = table.getElementsByTagName("tr");

			// Loop through all table rows, and hide those who don't match the search query
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[0];
				if (td) {
					txtValue = td.textContent || td.innerText;
					if (txtValue.toUpperCase().indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}
		function myFunction1() {
			// Declare variables
			var input, filter, table, tr, td, i, txtValue;
			input = document.getElementById("myInput1");
			filter = input.value.toUpperCase();
			table = document.getElementById("customers");
			tr = table.getElementsByTagName("tr");

			// Loop through all table rows, and hide those who don't match the search query
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[1];
				if (td) {
					txtValue = td.textContent || td.innerText;
					if (txtValue.toUpperCase().indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}
	</script>
</body>
</html>




































