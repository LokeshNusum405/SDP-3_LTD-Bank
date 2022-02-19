
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>View Loans</title>
<link href="../../styles.css" rel="stylesheet">

<jsp:include page="../css/links.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="lonavbar.jsp"></jsp:include>
	<br>

	<h2 align=center>View Loans</h2>

	<div class="container-fluid">
		<br>
		<div class="row">
			<div class="col-lg-2">
				<input type="text" id="myInput" class="form-control"
					onkeyup="myFunction()" placeholder="Search By Loanid" size="20"
					height="48">
			</div>
			<div class="col-lg-2">
				<input type="text" id="myInput1" class="form-control"
					onkeyup="myFunction1()" placeholder="Search By Account Number" size="20"
					height="48">
			</div>
		</div>
		<br>
		<table align=center border=1
			class="table table-striped table-bordered" style="width: 100%"
			id="customers">
			<thead class="table-info">
				<tr>
					<th>LOAN ID</th>
					<th>ACCOUNT NUMBER</th>
					<th>NAME</th>
					<th>EMAIL</th>
					<th>PHONE NUMBER</th>
					<th>LoanType</th>
					<th>Requested Amount</th>
					<th>Applied on</th>
					<th>Verified By</th>
					<th>Verified On</th>
					<th>LoanStatus</th>
					<th>View Loan Application</th>
				</tr>

			</thead>
			<c:forEach var="loans" items="${loans}">
				<tr>
					<td>${loans.loanid}</td>
					<td>${loans.accountNumber}</td>
					<td>${loans.customerName}</td>
					<td>${loans.email}</td>
					<td>${loans.phonenumber}</td>
					<td>${loans.loantype}</td> 
					<td>${loans.requestedamount}</td>
					<td>${loans.appliedon}</td>
					<td>${loans.issuedbyloname}</td>
					<td>${loans.issuedon}</td>
					<td>${loans.loanstatus}</td>
					
					<td><a href="/viewloanapplication/${loans.loanid}"
						class="btn btn-primary">  <i class="fas fa-eye"></i></a></td>
				</tr>
			</c:forEach>
		</table>
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




































