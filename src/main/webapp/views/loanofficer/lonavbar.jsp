<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Navbar -->
	<nav class="navbar navbar-expand-xl navbar-light bg-light">
		<!-- Container wrapper -->
		<div class="container-lg">
			<!-- Navbar brand -->
			<a class="navbar-brand me-2" href="/mainhome"> <img
				src="<c:url value = "/images/logo.png"/>" height="50" alt="" loading="lazy"
				style="margin-top: -1px;" />
				
			</a> <a class="navbar-brand me-2" href="/mainhome"> <img
				src="<c:url value = "/images/text_logo.png"/>" height="50" alt="" loading="lazy"
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
					<a href="/bmhome"><button type="button" class="btn btn-link px-3 me-5">
						<i class="fas fa-home pe-2"></i> Home
					</button></a>
					<a href="/aboutus"><button type="button" class="btn btn-link px-3 me-5">
						<i class="fas fa-info-circle pe-2"></i>About Us
					</button></a>
					<a href="/team"><button type="button" class="btn btn-link px-3 me-5">
						<i class="fas fa-users pe-2"></i>Team
					</button></a>

					<!-- Link -->
					<div class="btn-group shadow-0">
						<button type="button" class="btn btn-link dropdown-toggle"
							data-mdb-toggle="dropdown" aria-expanded="false">
							<i class="fas fa-phone pe-2"></i> ${phoneNumber}
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="#">Profile</a></li>
							<li><a class="dropdown-item" href="#">Settings</a></li>
							<li>
								<hr class="dropdown-divider" />
							</li>
							<li><a class="dropdown-item" href="/lologout">Logout</a></li>
						</ul>
					</div>

				</div>
			</div>
			<!-- Collapsible wrapper -->
		</div>
		<!-- Container wrapper -->
	</nav>
	<!-- Navbar -->