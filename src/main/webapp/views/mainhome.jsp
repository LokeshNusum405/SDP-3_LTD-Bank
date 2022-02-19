<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Main Home</title>
<link href="../styles.css" rel="stylesheet">

<jsp:include page="css/links.jsp"></jsp:include>



</head>

<body>



	<!-- Navbar -->
	<nav class="navbar navbar-expand-xl navbar-light bg-light">
		<!-- Container wrapper -->
		<div class="container-lg">
			<!-- Navbar brand -->
			<a class="navbar-brand me-2" href="/mainhome"> <img
				src="images/logo.png" height="50" alt="" loading="lazy"
				style="margin-top: -1px;" />
			</a> <a class="navbar-brand me-2" href="/mainhome"> <img
				src="images/text_logo.png" height="50" alt="" loading="lazy"
				style="margin-top: -1px;" />
			</a>

			<!-- Toggle button -->
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarButtonsExample"
				aria-controls="navbarButtonsExample" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>

			<!-- Collapsible wrapper -->
			<div class="collapse navbar-collapse" id="navbarButtonsExample">
				<!-- Left links -->
				<ul class="navbar-brand me-auto mb-2 mb-lg-0 ">
					<ul class="nav-item">

						</a>
					</ul>
				</ul>
				<!-- Left links -->

				<div class="d-flex align-items-center">
					<button type="button" class="btn btn-link px-3 me-5">
						<i class="fas fa-home pe-2"></i> Home
					</button>
					<button type="button" class="btn btn-link px-3 me-5">
						<i class="fas fa-info-circle pe-2"></i>About Us
					</button>
					<button type="button" class="btn btn-link px-3 me-5">
						<i class="fas fa-users pe-2"></i>Team
					</button>

				</div>
			</div>
			<!-- Collapsible wrapper -->
		</div>
		<!-- Container wrapper -->
	</nav>
	<!-- Navbar -->

	<br>
	<br>
	<!-- Carousel -->
	<section id="slider">
		<input type="radio" name="slider" id="s1"> <input type="radio"
			name="slider" id="s2"> <input type="radio" name="slider"
			id="s3" checked> <input type="radio" name="slider" id="s4">
		<input type="radio" name="slider" id="s5"> <label for="s1"
			id="slide1"> <img
			src="images/c4.jpg"
			height="100%" width="100%">
		</label> <label for="s2" id="slide2"> <img
			src="images/c2.jpg"
			height="100%" width="100%">
		</label> <label for="s3" id="slide3"> <img
			src="images/c4.jpg"
			height="100%" width="100%">
		</label> <label for="s4" id="slide4"> <img
			src="images/c3.jpg"
			height="100%" width="100%">
		</label> <label for="s5" id="slide5"> <img
			src="images/c5.jpg"
			height="100%" width="100%">
		</label>
	</section>




	<!-- Team Focus Start -->
	<div class="container-fluid">
		<div class="section-title">
			<h1>Main Home</h1>
		</div>
		<div class="row ">
			<div class="column container-fluid">
				<div class=" card shadow-5-strong" style="padding: 10px;">
					<div class="team-6">
						<div class="team-img">
							<img
								src="images/ba.jpg"
								alt="Team Image">
						</div>

						<div class="team-content">

							<h1 style="font-size: large;">Are You a Bank Manager?</h1>
							<h2 style="font-size: 15px;" class="text-danger">${bm_errmsg}</h2>
							<br>
							<button type="button" class="btn btn-primary"
								data-mdb-toggle="modal" data-mdb-target="#exampleModal">Bank
								Manager Login</button>




							<div class="modal fade" id="exampleModal" tabindex="-1"
								aria-labelledby="exampleModalLabel" aria-hidden="true">
								<jsp:include page="bankmanager/login.jsp"></jsp:include>
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
								src="images/lo.jpg"
								alt="Team Image">
						</div>

						<div class="team-content">

							<h1 style="font-size: large;">Are You a Loan Officer?</h1>
							<h2>${lo_errmsg }</h2>
							<br>

							<button type="button" class="btn btn-primary"
								data-mdb-toggle="modal" data-mdb-target="#exampleModal1">Loan
								Officer Login</button>




							<div class="modal fade" id="exampleModal1" tabindex="-1"
								aria-labelledby="exampleModalLabel1" aria-hidden="true">
								<jsp:include page="loanofficer/lo_login.jsp"></jsp:include>
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
								src="images/cu.jpg"
								alt="Team Image">
						</div>

						<div class="team-content">

							<h1 style="font-size: large;">
								Are You a <span>Customer?</span>
							</h1>
							<h2>${cu_errmsg }</h2>
							<br>

							<button type="button" class="btn btn-primary"
								data-mdb-toggle="modal" data-mdb-target="#exampleModal2">Customer
								Login</button>




							<div class="modal fade" id="exampleModal2" tabindex="-1"
								aria-labelledby="exampleModalLabel2" aria-hidden="true">
								<jsp:include page="customer/cu_login.jsp"></jsp:include>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- Team #FocusEnd -->
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>





	<script>
		</body>

		</html>
	