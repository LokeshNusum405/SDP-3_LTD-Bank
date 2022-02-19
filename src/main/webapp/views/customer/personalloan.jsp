<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Personal Loan</title>
<link href="../../styles.css" rel="stylesheet">

<jsp:include page="../css/links.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="cunavbar.jsp"></jsp:include>
	<div class="row col-md-12">
						<div class="col-md-8 align-self-center">
							<img src="images/loan.jpeg" alt="loan" width="850px" height="450px">
						</div>
						<div class="col-md-4 align-self-center">
							
							<button type="button" class="btn btn-primary"
							data-mdb-toggle="modal" data-mdb-target="#exampleModal1">
							Check Eligibility
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
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="/applypersonalloan" class="btn btn-primary">Apply Loan</a>
						</div>
					</div>

	<div class="container-fluid">
		<div class="section-title">
			<h1>Personal Loans</h1>
		</div>
		<div class="container">
			<p>LTD Bank Personal Loans offer fast processing of your loan.
				Personal Loans can be used for plenty of purposes! They can be
				availed when you are planning a vacation, renovating your home or
				arranging a dream wedding for yourself or somebody special in the
				family. Now you need not postpone things on your bucket list! You
				can get a Personal Loan from Rs. 50,000 upto Rs. 15,00,000 with
				minimal documentation and speedy approval from Axis Bank. Also, you
				can transfer your existing high interest Personal Loan to Axis Bank
				as well. With a quick approval on Personal Loans, turn your dreams
				into reality!</p>
		</div>
	</div>

	<div class="section-title">
	<h1>Services</h1>
	</div>
    
      <div class="row">
        <div class="col-lg-4">
          <div class="card-service">
            <div class="header">
             <img src="/images/p1.png" alt="" width="175px" height="175px">
            </div>
            <div class="body">
              <h5 class="text-secondary">Apply for Loan</h5>
              <p>We help you define your SEO objective & develop a realistic strategy with you</p>
             
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="card-service">
            <div class="header">
              <img src="/images/p2.png" alt="" width="175px" height="175px">
            </div>
            <div class="body">
              <h5 class="text-secondary">View Loan Status</h5>
              <p>We help you define your SEO objective & develop a realistic strategy with you</p>
              
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="card-service">
            <div class="header">
              <img src="/images/p3.png" alt="" width="175px" height="175px">
            </div>
            <div class="body">
              <h5 class="text-secondary">Check Eligibility</h5>
              <p>We help you define your SEO objective & develop a realistic strategy with you</p>
              
            </div>
          </div>
        </div>
      </div>
  

	<div class="container-fluid">
		<div class="section-title">
			<h1>Personal Loan Features and Benefits</h1>
		</div>
		<div class="container">
			<h3>LTD Bank Personal Loan Features</h3>
			<p>One needs to be of a minimum age of 21 years and should have a
				valid set of documents like ID, income and residence proof, among
				other documents, to avail a Personal Loan from Axis Bank.</p>

			<p>To ease the burden of paying off the Personal Loan
				immediately, you may opt for the EMI (Equated Monthly Instalment)
				facility. The repayment tenure can range from anywhere between 12 to
				60 months. If youre an Axis Bank customer, you can avail the best
				rates for Personal Loans!</p>
			<p>To know how much you need to pay per month, there is a
				Personal Loan calculator at your disposal. You can choose your
				tenure and the amount that you are comfortable repaying each month
				for the chosen tenure. With the Personal Loan EMI Calculator, you
				can also calculate the compound interest and know exactly how much
				you need to finally part with - including the interest.</p>
		</div>


		
			<div class="container">
				<div >
					<h2 class="title-section">
						LTD Bank Personal Loan Benfits
					</h2>
					<div class="divider mx-auto"></div>
				</div>

				<div class="row mt-5 text-center">
					<div class="col-lg-4 py-3">
						<div class="display-3">
							<span class="fas fa-user"></span>
						</div>
						<h5>High Performance</h5>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
							Laborum, sit.</p>
					</div>
					<div class="col-lg-4 py-3">
						<div class="display-3">
							<span class="fas fa-user"></span>
						</div>
						<h5>Friendly Prices</h5>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
							Laborum, sit.</p>
					</div>
					<div class="col-lg-4 py-3">
						<div class="display-3">
							<span class="fas fa-user"></span>
						</div>
						<h5>No time-confusing</h5>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
							Laborum, sit.</p>
					</div>
				</div>
			</div>
			<div class="section-title">
			<h1>FAQ's</h1>
			</div>
		
		
		</div>
	

	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>