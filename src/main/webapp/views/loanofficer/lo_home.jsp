<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan Officer Home</title>
<link href="../../styles.css" rel="stylesheet">

<jsp:include page="../css/links.jsp"></jsp:include>
</head>
<body>

	<jsp:include page="../loanofficer/lonavbar.jsp"></jsp:include>
	<br>
	<br>
	<div class="row col-md">
	<div class="col-md-6">
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	</div>
	<div class="col-md-6">
	<div id="chartContainer1" style="height: 370px; width: 100%;"></div>
	</div>
	
	</div>




	<!-- Team Focus Start -->
	<div class="container-fluid">
		<div class="section-title">
			<h1>Loan Officer Home</h1>
		</div>
		<div class="row ">
			<div class="column container-fluid">
				<div class=" card shadow-5-strong" style="padding: 10px;">
					<div class="team-6">
						<div class="team-img">
							<img
								src="images/l1.png"
								alt="Team Image">
						</div>

						<div class="team-content">

							<h1 style="font-size: large;">Do You Want to Open an Account for Customer?</h1>
							<h2 style="font-size: 15px;" class="text-danger">${bm_errmsg}</h2>
							<br>
							<button type="button" class="btn btn-primary"
								data-mdb-toggle="modal" data-mdb-target="#exampleModal">Add
								Customer</button>




							<div class="modal fade" id="exampleModal" tabindex="-1"
								aria-labelledby="exampleModalLabel" aria-hidden="true">
								<jsp:include page="add_customer.jsp"></jsp:include>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="column container-fluid">
				<div class=" card shadow-5-strong" style="padding: 10px;">
					<div class="team-6">
						<div class="team-img">
							<img
								src="images/l2.jpg"
								alt="Team Image">
						</div>

						<div class="team-content">

							<h1 style="font-size: large;">Do You Want to View all Customers?</h1>
							<h2>${lo_errmsg }</h2>
							<br>

							<a href="/viewcustomers"><button type="button" class="btn btn-primary">View all Customers</button></a>
							

						</div>
					</div>
				</div>
			</div>

			<div class="column container-fluid">
				<div class=" card shadow-5-strong" style="padding: 10px;">
					<div class="team-6">
						<div class="team-img">
							<img
								src="images/l3.jpg"
								alt="Team Image">
						</div>

						<div class="team-content">

							<h1 style="font-size: large;">
								Do u want to see Loans Applied
							</h1>
							<h2>${cu_errmsg }</h2>
							<br>

							<a href="/viewloans"><button type="button" class="btn btn-primary">View  Loans</button></a>




							<div class="modal fade" id="exampleModal2" tabindex="-1"
								aria-labelledby="exampleModalLabel2" aria-hidden="true">
								<jsp:include page=""></jsp:include>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- Team #FocusEnd -->

	<jsp:include page="../footer.jsp"></jsp:include>


<h2 align=center> Spring Boot with MVC ,  </h2>

<a href="/lohome">Home</a> &nbsp;&nbsp;&nbsp;
<a href="/addcustomer">Add Customer</a> &nbsp;&nbsp;&nbsp;
<a href="/viewcustomers">View Customers</a> &nbsp;&nbsp;&nbsp;

<script>
window.onload = function() {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title: {
		text: "Active Customer Analytics"
	},
	data: [{
		type: "pie",
		startAngle: 240,
		yValueFormatString: "##0.00\"%\"",
		indexLabel: "{label} {y}",
		dataPoints: [
			{y: ${a}, label: "Active Customers"},
			{y: ${i}, label: "InActive Customers"}
		]
	}]
});

var chart1 = new CanvasJS.Chart("chartContainer1", {
	animationEnabled: true,
	title: {
		text: "Active Customer Analytics"
	},
	data: [{
		type: "bar",
		startAngle: 240,
		yValueFormatString: "##0.00\"%\"",
		indexLabel: "{label} {y}",
		dataPoints: [
			{y: ${a}, label: "Active Customers"},
			{y: ${i}, label: "InActive Customers"}
		]
	}]
});
chart.render();
chart1.render();

}
</script>
</body>
</html>