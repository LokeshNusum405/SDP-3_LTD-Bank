<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Loan </title>
<link href="../../styles.css" rel="stylesheet">

<jsp:include page="../css/links.jsp"></jsp:include>
</head>
<body>
<jsp:include page="cunavbar.jsp"></jsp:include>
	

      
      	<!-- Team Focus Start -->
	<div class="container-fluid">
		<div class="section-title">
			<h1>Loans</h1>
		</div>
		<div class="row ">
			<div class="column container-fluid">
				<div class=" card shadow-5-strong" style="padding: 10px;">
					<div class="team-6">
						<div class="team-img">
							<img
								src="images/pl.jfif"
								alt="Team Image">
						</div>

						<div class="team-content">

							<h1 style="font-size: large;">Check Eligibility for Personal Loan</h1>
							<h2 style="font-size: 15px;" class="text-danger">${bm_errmsg}</h2>
							<br>
							<button type="button" class="btn btn-primary"
							data-mdb-toggle="modal" data-mdb-target="#exampleModal1">
							Personal Loan
						</button>

						<div class="modal fade" id="exampleModal1" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content" style="width: 100%">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Personal Loan Eligibility
											</h5>
										<button type="button" class="btn-close"
											data-mdb-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<img src="/images/pec.png" width="450px"
											height="800px" />
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
			</div>
			<div class="column container-fluid">
				<div class=" card shadow-5-strong" style="padding: 10px;">
					<div class="team-6">
						<div class="team-img">
							<img
								src="images/el.jfif"
								alt="Team Image">
						</div>

						<div class="team-content">

							<h1 style="font-size: large;">Check Eligibility for Education Loan</h1>
							<h2>${lo_errmsg }</h2>
							<br>

							<a href=""><button type="button" class="btn btn-primary">Education Loan</button></a>
							

						</div>
					</div>
				</div>
			</div>

			<div class="column container-fluid">
				<div class=" card shadow-5-strong" style="padding: 10px;">
					<div class="team-6">
						<div class="team-img">
							<img
								src="images/hl.jfif"
								alt="Team Image">
						</div>

						<div class="team-content">

							<h1 style="font-size: large;">Check Eligibility for Home Loan</h1>
							<h2>${cu_errmsg }</h2>
							<br>

							<a href=""><button type="button" class="btn btn-primary">Home Loan</button></a>

						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- Team #FocusEnd -->
	<br><br>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>