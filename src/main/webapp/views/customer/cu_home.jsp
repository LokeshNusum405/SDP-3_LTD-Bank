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
	<br>
	<!-- Carousel -->
	<section id="slider">
		<input type="radio" name="slider" id="s1"> <input type="radio"
			name="slider" id="s2"> <input type="radio" name="slider"
			id="s3" checked> <input type="radio" name="slider" id="s4">
		<input type="radio" name="slider" id="s5"> <label for="s1"
			id="slide1"> <img
			src="images/k1.jfif"
			height="100%" width="100%">
		</label> <label for="s2" id="slide2"> <img
			src="images/k2.png"
			height="100%" width="100%">
		</label> <label for="s3" id="slide3"> <img
			src="images/k3.jpg"
			height="100%" width="100%">
		</label> <label for="s4" id="slide4"> <img
			src="images/k4.jfif"
			height="100%" width="100%">
		</label> <label for="s5" id="slide5"> <img
			src="images/k5.jfif"
			height="100%" width="100%">
		</label>
	</section>




	<!-- Team Focus Start -->
	<div class="container-fluid">
		<div class="section-title">
			<h1>Customer Home</h1>
		</div>
		<div class="page-section">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <div class="card-service">
            <div class="header">
             <img src="/images/app1.jfif" alt="" width="175px" height="175px" style="border-radius:110px">
            </div>
            <div class="body">
              <h5 class="text-secondary">Apply for Loan</h5>
              <p>We help you define your SEO objective & develop a realistic strategy with you</p>
              <a href="/loans" class="btn btn-primary">Apply Loan</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="card-service">
            <div class="header">
              <img src="/images/app2.jfif" alt="" width="175px" height="175px" style="border-radius:110px">
            </div>
            <div class="body">
              <h5 class="text-secondary">View Loan Status</h5>
              <p>We help you define your SEO objective & develop a realistic strategy with you</p>
              <a href="/viewloanstatus" class="btn btn-primary">View Loan Status</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="card-service">
            <div class="header">
              <img src="/images/app3.jfif" alt="" width="175px" height="175px" style="border-radius:110px">
            </div>
            <div class="body">
              <h5 class="text-secondary">Check Eligibility</h5>
              <p>We help you define your SEO objective & develop a realistic strategy with you</p>
              <a href="/checkeligibilityforloans" class="btn btn-primary">Check Eligibility</a>
            </div>
          </div>
        </div>
      </div>
    </div> <!-- .container -->
  </div> <!-- .page-section -->

	</div>
	<!-- Team #FocusEnd -->

	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>