<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Main Home</title>
    <link  href="../styles.css" rel="stylesheet">

    <jsp:include page="../css/links.jsp"></jsp:include>
 
   
    
</head>

<body>



    <!-- Navbar -->
	<nav class="navbar navbar-expand-xl navbar-light bg-light">
		<!-- Container wrapper -->
		<div class="container-lg">
			<!-- Navbar brand -->
			<a class="navbar-brand me-2" href="/mainhome"> <img
				src="../images/logo.png" height="50" alt="" loading="lazy"
				style="margin-top: -1px;" />
			</a> <a class="navbar-brand me-2" href="/mainhome"> <img
				src="../images/text_logo.png" height="50" alt="" loading="lazy"
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
                            <img src="https://mdbootstrap.com/img/new/standard/nature/184.jpg" alt="Team Image">
                        </div>

                        <div class="team-content">

                            <h1 style="font-size: large;">
                                Are You a Bank Manager?
                            </h1>
                            <br>
                            <button type="button" class="btn btn-primary" data-mdb-toggle="modal" data-mdb-target="#x" id="btn" onclick="test()" >Bank Manager
                                    Login</button>
                                    
                                    
                                    
                                    
<div
  class="modal fade"
  id="x"
  tabindex="-1"
  aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" >Bank Manager Login</h5>
        <a href="/mainhome"><button
          type="button"
          class="btn-close"
          data-mdb-dismiss="modal"
          aria-label="Close"
        ></button></a>
      </div>
      <div class="modal-body">
      <h3>Otp Verification</h3>
      <h6>OTP has been sent to your Registered Mobile Number ${smsRequest.getPhoneNumber()}</h6>
      <form align='center' action="/sms/verifyOTP" method="POST">
  		<input type="hidden" id="otp" name="otp" value="${otp}">
		<input type="hidden" id="phoneNumber" name="phoneNumber" value="${smsRequest.getPhoneNumber()}">
	      <div class="row">		
			<div class="col-md-8 align-self-center">
				<input type="text" id="user_otp" name="user_otp" class="form-control" Placeholder="Enter 6 - digits OTP">
			</div>
			<div class="col-md-4 align-self-center">
			<input type="submit" value="Check OTP" class="btn btn-info">
			</div>
		 </div>
		</form>
		<br>
		<form align='center' action="/sms/resendOTP" method="POST">
		<input type="hidden" id="phoneNumber" name="phoneNumber" value="${smsRequest.getPhoneNumber()}">
		<div class="row">
			<div class="col-md-6 align-self-center" style="text-align:right">Didn't Get OTP ? Click Here to</div> 
			<div class="col-md-6 align-self-center" style="align:right">
			<button type="submit" value="Resend" class="btn btn-link px-3 me-5">Resend OTP</button>
			</div>
		
		</div>
	</form>
      </div>
      <div class="modal-footer">
        <a href="/mainhome"><button type="button" class="btn btn-secondary" data-mdb-dismiss="modal">
          Close
        </button></a>
        
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
                            <img src="https://mdbootstrap.com/img/new/standard/nature/184.jpg" alt="Team Image">
                        </div>

                        <div class="team-content">

                            <h1 style="font-size:large;">
                                Are You a Loan Officer?
                            </h1>
                            <br>
                            <a href="/sms2/lologin"><button type="button" class="btn btn-primary">Loan Officer
                                    Login</button></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="column container-fluid">
                <div class=" card shadow-5-strong" style="padding: 10px;">
                    <div class="team-6">
                        <div class="team-img">
                            <img src="https://mdbootstrap.com/img/new/standard/nature/184.jpg" alt="Team Image">
                        </div>

                        <div class="team-content">

                            <h1 style="font-size: large;">
                                Are You a <span>Customer?</span>
                            </h1>
                            <br>
                            <a href=""><button type="button" class="btn btn-primary">Customer Login</button></a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- Team #FocusEnd -->





<script>
  
  function test(){
	}

	window.onload = function(){
	  document.getElementById('btn').click();
	  
	var scriptTag = document.createElement("script");
	scriptTag.src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js";
	document.getElementsByTagName("head")[0].appendChild(scriptTag);
	}
  </script>
</body>

</html>