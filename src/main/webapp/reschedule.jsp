<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form by Colorlib</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>

 <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">ReSchedule Form</h2>
					
						<form method="post" action="appointment" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" require="required"/>
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" require="required"/>
							</div>
							
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact"
									placeholder="Contact no" require="required"/>
							</div>
							
							<div class="form-group">
								<label for="city"><i class="zmdi zmdi-city"></i></label>
								<input type="city" name="city" id="city"
									placeholder="Give city" require="required"/>
							</div>
							
							<div class="form-group">
								<label for="pincode"><i class="zmdi zmdi-pin"></i></label>
								<input type="pincode" name="pincode" id="pincode"
									placeholder="Enter Pin" require="required"/>
							</div>
							
							<div class="form-group">
								<label for="date"><i class="zmdi zmdi-calendar"></i></label>
								<input type="date" name="date" id="contact"
									placeholder="Give Date" require="required"/>
							</div>
							
							<div class="form-group">
								<label for="time"><i class="zmdi zmdi-time"></i></label>
								<input type="time" name="time" id="contact"
									placeholder="Give Time" require="required"/>
							</div>
							
							
							<div class="form-group form-button">
								<input type="submit" name="signup" id="submit"
									class="form-submit" value="Submit" /><a href="index.jsp" class="signup-image-link">Go Back</a>
							</div>
							
							
						</form>
					</div>
					
				</div>
			</div>
						
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	

<script type= "text/javascript">

  var status = document.getElementById("status").value;
  if(status == "success"){
	  swal("Congrats","Your Appointment Was Confirm","Success");
	  }

  function getEmail() {
	  const val = document.querySelector('#email').value;
	  console.log(val);
	}
	
  </script>



</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>