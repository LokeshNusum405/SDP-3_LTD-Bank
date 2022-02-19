<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank Manager Home</title>
<link href="../../styles.css" rel="stylesheet">

<jsp:include page="../css/links.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="bmnavbar.jsp"></jsp:include>
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
			<h1>Bank Manager Home</h1>
		</div>
		<div class="row ">
			<div class="column container-fluid">
				<div class=" card shadow-5-strong" style="padding: 10px;">
					<div class="team-6">
						<div class="team-img">
							<img
								src="images/addloanofficer.jfif"
								alt="Team Image">
						</div>

						<div class="team-content">

							<h1 style="font-size: large;">Do You Want to Add a Loan
								Officer?</h1>
							<h2 style="font-size: 15px;" class="text-danger">${bm_errmsg}</h2>
							<br>
							<button type="button" class="btn btn-primary"
								data-mdb-toggle="modal" data-mdb-target="#exampleModal">Add
								Loan Officer</button>




							<div class="modal fade" id="exampleModal" tabindex="-1"
								aria-labelledby="exampleModalLabel" aria-hidden="true">
								<jsp:include page="add_loanofficer.jsp"></jsp:include>
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
								src="images/viewloanofficer.jfif"
								alt="Team Image">
						</div>

						<div class="team-content">

							<h1 style="font-size: large;">Do You Want to View all Loan
								Officers?</h1>
							<h2>${lo_errmsg }</h2>
							<br>

							<a href="/viewloanofficers"><button type="button" class="btn btn-primary">View all Loan Officers</button></a>
							

						</div>
					</div>
				</div>
			</div>

			<div class="column container-fluid">
				<div class=" card shadow-5-strong" style="padding: 10px;">
					<div class="team-6">
						<div class="team-img">
							<img
								src="images/viewloans.jfif"
								alt="Team Image">
						</div>

						<div class="team-content">

							<h1 style="font-size: large;">
								Are You a <span>Customer?</span>
							</h1>
							<h2>${cu_errmsg }</h2>
							<br>

							<a href="/viewallloans"><button type="button" class="btn btn-primary">View all  Loans</button></a>




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

<script>
window.onload = function() {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title: {
		text: "Loan Status Analytics"
	},
	data: [{
		type: "pie",
		startAngle: 240,
		yValueFormatString: "##0.00\"%\"",
		indexLabel: "{label} {y}",
		dataPoints: [
			{y: ${p1}, label: "Applied Loans"},
			{y: ${p2}, label: "Verified Loans"},
			{y: ${p3}, label: "Accepted Loans"},
			{y: ${p4}, label: "Rejected Loans"}
		]
	}]
});

var chart1 = new CanvasJS.Chart("chartContainer1", {
	animationEnabled: true,
	title: {
		text: "Loan Status Analytics"
	},
	data: [{
		type: "line",
		startAngle: 240,
		yValueFormatString: "##0.00\"%\"",
		indexLabel: "{label} {y}",
		dataPoints: [
			{y: ${p1}, label: "Applied Loans"},
			{y: ${p2}, label: "Verified Loans"},
			{y: ${p3}, label: "Accepted Loans"},
			{y: ${p4}, label: "Rejected Loans"}
		]
	}]
});
chart.render();
chart1.render();

}
</script>

</body>
</html>