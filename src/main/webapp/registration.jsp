<!DOCTYPE html>
<html lang="en">

<head><style>
    @import url("https://fonts.googleapis.com/css2?family=Montserrat:wght@500;700&display=swap");

:root {
  --form-color: rgba(0, 0, 0, 0.75);
  --primary-color: #0b64dc;
  --text-color: #fff;
  --input-color: rgba(255, 255, 255, 0.2);
  --hover-color: #0d74ff;
}

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
  font-family: sans-serf;
}

body {
  /* City Night */
  background: center/cover
    url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV1CWGH7hyioEPtYWZIdqYgQ7FLESTb2Lqgg&usqp=CAU");
  box-shadow: inset 0 0 100px rgba(0, 0, 0, 0.75);
  display: flex;
  font-family: "Montserrat", sans-serif;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100vh;
  overflow: hidden;
  padding: 1rem;
}

.container {
  background: var(--form-color);
  max-width: 500px;
  min-width: 320px;
  padding: 4rem;
  width: 100%;
}

h1 {
  border-bottom: 2px solid var(--primary-color);
  color: var(--text-color);
  font-family: "Montserrat", sans-serif;
  font-size: 1.5rem;
  font-weight: 500;
  margin-left: 0.3rem;
  margin-bottom: 2rem;
  width: 110px;
  display: relative;
}

form {
  display: flex;
  flex-direction: column;
  width: 100%;
}

.form__item {
  display: flex;
  flex-direction: column;
  margin: 1rem 0;
}

.form__item label {
  color: var(--text-color);
  font-family: "Montserrat", sans-serif;
  font-size: 0.8rem;
  margin: 0.3rem 0.4rem;
}

.form__item input {
  background: var(--input-color);
  border: none;
  border-radius: 1rem;
  color: var(--text-color);
  font-family: "Montserrat", sans-serif;
  font-size: 1rem;
  padding-left: 0.5rem;
  height: 2.2rem;
}

*:focus {
  outline: none;
}

.form__item__checkbox {
  display: flex;
  margin: 1rem 0.3rem;
}

.form__item__checkbox input {
  appearance: none;
  -webkit-appearance: none;
  border: 2px solid var(--text-color);
  cursor: pointer;
  height: 1rem;
  width: 1rem;
}

.form__item__checkbox input:checked {
  background-color: var(--primary-color);
  cursor: pointer;
}

.form__item__checkbox label {
  color: var(--text-color);
  font-family: "Montserrat", sans-serif;
  font-size: 0.8rem;
  margin-left: 0.5rem;
}

.form__item__submit {
  width: 100%;
}

.form__item__submit input {
  background: var(--primary-color);
  border: none;
  color: var(--text-color);
  cursor: pointer;
  font-family: "Montserrat", sans-serif;
  margin-top: 1rem;
  padding: 0.8rem;
  transition: 0.5s ease;
  width: 100%;
}

.form__item__submit input:hover {
  background: var(--hover-color);
  transition: 0.5s ease;
}
.form__item__submit input:focus {
  outline: none;
}

@media (max-width: 400px) {
  .container {
    padding: 2rem;
  }
}

</style>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width" initial-scale=1.0" />
  <link rel="stylesheet" href="style.css" />
  <title>SIGN UP</title>
  <!-- <script src="script.js" defer></script> -->
</head>

<body>

    <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

  <div class="container">
    <h1>SIGN UP</h1>

    <form method="post" action="register" class="register-form"
							id="register-form">

    <form>
      <div class="form__item">
        <label for="username"></label>
        <input
									type="text" name="name" id="name" placeholder="Your Name" require="required"/>
      </div>

      <div class="form__item">
        <label for="email"><i class="zmdi zmdi-email"></i></label>
        <input
									type="email" name="email" id="email" placeholder="Your Email" require="required"/>
      </div>

      <div class="form__item">
        <label for="password"></label>
        <input
									type="password" name="pass" id="pass" placeholder="Password" require="required"/>
      </div>
      
      <div class="form__item">
        <label for="re-pass"></label>
        <input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" require="required"/>
      </div>

      <div class="form__item">
        <label for="contact"></label>
        <input type="text" name="contact" id="contact"
									placeholder="Contact no" require="required"/>
      </div>

      <div class="form__item__checkbox">
        <input type="checkbox" id="checkbox">
        <label for="checkbox">I agree to the terms and conditions</label>
      </div>

      <div class="form__item__submit">
        <input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
      </div>
      
      <br>

      <a href="login.jsp" class="signup-image-link">I am already
        member</a>     

    </form>

  </div>
  <!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	

<script type= "text/javascript">

  var status = document.getElementById("status").value;
  if(status == "success"){
	  swal("Congrats","Account Created Successfully","Success");
	  }
  if(status == "invalidName"){
	  swal("Sorry","Please Enter Name","error");
	  }
  if(status == "invalidEmail"){
	  swal("Sorry","Please Enter Email","error");
	  }
  if(status == "invalidupwd"){
	  swal("Sorry","Please Enter password","error");
	  }
  if(status == "invalidumobile"){
	  swal("Sorry","Please Enter Mobile Number","error");
	  }
  if(status == "invalidMobileLength"){
	  swal("orry","Mobile Number Should be of 10 digits","error");
	  }
  if(status == "invalidConfirmpassword"){
	  swal("Sorry","password do not Match","error");
	  }
  </script>
</body>

</html>