<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Appointment Form by AVM</title>

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
						<h2 class="form-title">Appointment Form</h2>
					
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
								<label for="mobile"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="mobile" id="mobile"
									placeholder="Contact no" require="required"/>
							</div>
									<div class="form-group">
								<label for="city"><i class="zmdi zmdi-city"></i></label> 
								<input type="text" name='city' class="form-control" id="city"  
								 placeholder="City" require="required"/>
								 
						    </div>
								 <div class="form-group">
								<label for="pincode"><i class="zmdi zmdi-pin"></i></label> 
								<input type="text" name='pincode' class="form-control" id="pincode"  
								 placeholder="Pincode" require="required"/>
							</div>
							
							
							<div class="form-group">
								<label for="date"><i class="zmdi zmdi-date"></i></label> 
								<input type="date" name='date' class="form-control" id="date"  
								 placeholder="Appointment Date" require="required"/>
							</div>
							
							<div class="form-group">
								<label for="time"><i class="zmdi zmdi-time"></i></label> 
								<input type="time" name='time' class="form-control" id="time"  
								 placeholder="Appointment Time" require="required"/>
							</div>
							
									
							<div class="form-group form-button">
								<input type="submit" name="submit" id="submit"
									class="form-submit" value="Submit" />
							</div>
						</form>
						
					</div>
					
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
	  swal("Congrats","Appointment Was Booked","Success");
	  }
 
  </script>



</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>