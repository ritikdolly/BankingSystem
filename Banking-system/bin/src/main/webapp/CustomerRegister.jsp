<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CustomerCreate</title>
</head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
</head>
<body>

	<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		"Helvetica Neue", Arial, sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol";
}

body {
	background-image:
		url('https://t3.ftcdn.net/jpg/07/89/63/54/240_F_789635487_ArQY75ZzKKuwSc3lz8TopT9C2ke6JhHC.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}

#arrow-left-long {
	width: 30px;
	height: 30px;
	font-size: 20px;
	padding: 5px;
	position: relative;
	top: 1px;
	left: 10px;
	background-color: #ffffff;
}

#arrow-left-long a {
	color: #030404;
}

.sidenav {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #ffffff;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
}

.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sidenav a:hover {
	color: #f1f1f1;
}

.container {
	max-width: 900px;
	margin-top: 80px;
	padding: 20px;
	background-color: #e9ecef;
	box-shadow: rgba(179, 163, 163, 0.25) 0px 5px 15px;
}

h1 {
	text-align: center;
	margin-bottom: 20px;
	color: #030303;
	text-shadow: 3px 2px 2px #ffffff;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #030404;
}

.infoBoxes {
	margin-bottom: 20px;
}

.infoBoxes h2 {
	font-size: 18px;
	margin-bottom: 10px;
}

label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

input[type="text"], input[type="number"], input[type="date"], input[type="email"],
	textarea, select {
	width: 100%;
	padding: 10px;
	font-size: 14px;
	border: 1px solid #ccc;
	border-radius: 4px;
	margin-bottom: 15px;
}

.detail {
	display: flex;
	flex-wrap: wrap;
	gap: 15px;
	margin: 5px 0px 5px 0px;
}

.detail input {
	flex: 1;
}

.radioButton span {
	padding-left: 10px;
}

input[type="radio"] {
	margin-right: 5px;
}

.nav-bar-second :first-child i:hover {
	background-color: #ececec;
}

#info .address span {
	max-width: 23%;
	display: flex;
	justify-content: space-evenly;
	align-items: center;
	flex-wrap: wrap;
}

#info .address input[type="text"], input[type="number"] {
	margin-bottom: 5px;
}

#info select.form-select {
	width: 100%;
	padding: 10px;
	font-size: 14px;
	border: 1px solid #ccc;
	border-radius: 4px;
	background-color: #fff;
	appearance: none;
}

button {
	padding: 10px 30px;
	border: none;
	border-radius: 4px;
	font-size: 16px;
	cursor: pointer;
	margin: 10px 10px 0px 0px;
}

#infobutton {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 0px 8px;
}

button[type="button"] {
	background-color: #007bff;
	color: #fff;
}

button[type="reset"] {
	background-color: #dc3545;
	color: #fff;
}

button[type="submit"] {
	background-color: #28a745;
	color: #fff;
}

@media ( max-width : 768px) {
	.detail {
		flex-direction: column;
	}
	button {
		width: 100%;
	}
}

footer {
	width: 100%;
	height: 70px;
	background-color: white;
	margin-top: 30px;
	display: flex;
	padding: 60px;
	justify-content: space-between;
	align-items: center;
	box-shadow: rgba(0, 0, 0, 0.50) 0px 3px 8px;
}

footer .social-media p i {
	color: #000000;
	font-size: 18px;
	width: 25px;
	height: 25px;
	border-radius: 12.5px;
	text-align: center;
	padding-top: 5px;
	box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
	margin-right: 30px;
}
</style>
<body>
	<%
	String regi = (String) session.getAttribute("notRegister");
	if (regi != null) {
	%>
	<div class="alert alert-danger" role="alert"><%=regi%>
		Login...<a href="second.jsp">click</a>
	</div>
	<%
	}
	%>
	<nav class="navbar navbar-dark bg-primary fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <svg
					xmlns="http://www.w3.org/2000/svg" width="25" height="25"
					fill="currentColor" class="bi bi-bank" viewBox="0 0 16 16">
          <path
						d="m8 0 6.61 3h.89a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H15v7a.5.5 0 0 1 .485.38l.5 2a.498.498 0 0 1-.485.62H.5a.498.498 0 0 1-.485-.62l.5-2A.5.5 0 0 1 1 13V6H.5a.5.5 0 0 1-.5-.5v-2A.5.5 0 0 1 .5 3h.89zM3.777 3h8.447L8 1zM2 6v7h1V6zm2 0v7h2.5V6zm3.5 0v7h1V6zm2 0v7H12V6zM13 6v7h1V6zm2-1V4H1v1zm-.39 9H1.39l-.25 1h13.72z" />
        </svg> RGSDSA
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar"
				aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div
				class="offcanvas offcanvas-end bg-primary userside-bar text-white"
				tabindex="-1" id="offcanvasDarkNavbar"
				aria-labelledby="offcanvasDarkNavbarLabel">
				<div class="offcanvas-header ">
					<h5 class="offcanvas-title " id="offcanvasDarkNavbarLabel">
						<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
							fill="currentColor" class="bi bi-bank" viewBox="0 0 16 16">
              <path
								d="m8 0 6.61 3h.89a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H15v7a.5.5 0 0 1 .485.38l.5 2a.498.498 0 0 1-.485.62H.5a.498.498 0 0 1-.485-.62l.5-2A.5.5 0 0 1 1 13V6H.5a.5.5 0 0 1-.5-.5v-2A.5.5 0 0 1 .5 3h.89zM3.777 3h8.447L8 1zM2 6v7h1V6zm2 0v7h2.5V6zm3.5 0v7h1V6zm2 0v7H12V6zM13 6v7h1V6zm2-1V4H1v1zm-.39 9H1.39l-.25 1h13.72z" />
            </svg>
						RGSDSA
					</h5>
					<button type="button" class="btn-close btn-close-white"
						data-bs-dismiss="offcanvas" aria-label="Close"></button>
				</div>
				<div class="offcanvas-body">
					<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Home</a></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Other </a>
							<ul class="dropdown-menu custom-dropdown">
								<li><a class="dropdown-item" href="#">Customer Creation</a></li>
								<li><a class="dropdown-item" href="#">Customer
										Information</a></li>
								<li><a class="dropdown-item" href="#">Customer Deposit</a></li>
							</ul></li>

						<li class="nav-item"></li>
						<a class="nav-link " href="#"><svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-box-arrow-in-right"
								viewBox="0 0 16 16">
                <path fill-rule="evenodd"
									d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0z" />
                <path fill-rule="evenodd"
									d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708z" />
              </svg> Logout</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<div class="container ">
		<div class="title-bar">

			<h1>Bank Application Form</h1>
		</div>
		<form action="CustomerRegistor" method="post">
			<div class="infoBoxes">
				<h2>Personal Details</h2>
				<div id="info">
					<label for="f-name">Name</label>
					<div class="detail name_style">
						<input type="text" id="f-name" required name="firstname"
							placeholder="Enter First Name" /> <input type="text" id="l-name"
							required name="lastname" placeholder="Enter Last Name" />
					</div>
				</div>
				<div id="info">
					<label for="father-Name">Father's Name</label> <input type="text"
						id="father-Name" required name="fatherName"
						placeholder="Enter Father's Name" />
				</div>
				<div id="info">
					<label>Gender</label>
					<div class="detail radioButton">
						<span><label for="gender-male"><input type="radio"
								required name="gender" value="male" id="gender-male">Male</label></span>
						<span><label for="gender-female"><input
								type="radio" name="gender" value="female" id="gender-female">Female</label></span>
						<span><label for="gender-other"><input type="radio"
								name="gender" value="other" id="gender-other">Other</label></span>
					</div>
				</div>
				<div id="info">
					<label for="dob">DOB</label> <input type="date" id="date" required
						name="dob">
				</div>
				<div id="info">
					<label for="address">Address</label>
					<textarea name="address" required id="address" rows="3"
						maxlength="100" placeholder="Enter address"></textarea>
				</div>
				<div id="info">
					<div class="detail address">
						<span>City :<input type="text" required name="city"
							placeholder="Enter City" />
						</span> <span>District :<input type="text" required
							name="district" placeholder="Enter District" /></span> <span>State
							:<input type="text" required name="state"
							placeholder="Enter State" />
						</span> <span>Pin Code :<input type="number" required
							id="pin-code" name="pinCode" placeholder="Enter Pin Code" /></span>
					</div>
					<br>
				</div>
				<div id="info">
					<label>Nationality</label>
					<div class="detail radioButton">
						<span><label for="nationality-indian"><input
								type="radio" name="nationality" required value="Indian"
								id="nationality-indian">Indian</label></span> <span><label
							for="nationality-other"><input type="radio"
								name="nationality" value="other" id="nationality-other">Other</label></span>
					</div>
				</div>
				<div id="info">
					<label for="phone-number">Phone Number</label> <input type="number"
						required id="phone-number" name="phoneNumber" pattern="[0-9]{10}"
						maxlength="10" placeholder="Enter Phone Number">

				</div>
				<br>
				<div id="info">
					<label for="addhaar-no">Aadhaar No.</label> <input type="number"
						required id="aadhaar-number" name="aadhaarNumber" pattern="\d{12}"
						placeholder="Enter Aadhaar Number">

				</div>
				<br>
				<div id="info">
					<label for="pan-no">Pan No.</label> <input type="text" required
						id="pan-number" name="panNumber" placeholder="Enter PAN Number">
				</div>
				<div id="info">
					<label for="email">Email</label> <input type="email" required
						name="email" placeholder="Enter Email ID" />
				</div>
				<div id="info">
					<label for="accountType" class="form-label">Account Type:</label> <select
						id="accounttype" name="accounttype" class="form-select" required>
						<option value="savings">Savings</option>
						<option value="current">Current</option>
						<option value="fixedDeposit">Fixed Deposit</option>
					</select>
				</div>
				<br>
				<div id="infobutton">
					<button id="reset" name="resset" type="reset">Reset</button>
					<button id="next" name="next" type="button">Next</button>
				</div>
			</div>
			<div class="infoBoxes">
				<h2>Additional Details</h2>
				<div id="info">
					<div class="employer ">
						<label for="ref1">Nominee 1</label> <input type="text"
							name="nominee1" required id="ref1"
							placeholder="Enter Reference Name "> <label
							for="relation1">RelationShip</label> <input type="text"
							name="relation1" required id="relation1"
							placeholder="Enter Relation ">
					</div>
					<div class="employer">
						<label for="ph-number1">Phone Number</label> <input type="number"
							name="phno1" required id="ph-number1"
							placeholder="Enter Phone Number" maxlength="10"> <label
							for="email1">Email</label> <input type="email" name="email1"
							required id="email1" placeholder="Enter Email">
					</div>
				</div>
				<div id="info">
					<div class="employer">
						<label for="ref2">Nominee 2</label> <input type="text"
							name="nominee2" required id="ref2"
							placeholder="Enter Reference Name "> <label
							for="relation2">RelationShip</label> <input type="text"
							name="relation2" required id="relation2"
							placeholder="Enter Relation">
					</div>
					<div class="employer">
						<label for="ph-number2">Phone Number</label> <input type="number"
							name="phno2" required id="ph-number2"
							placeholder="Enter Phone Number"> <label for="email2">Email</label>
						<input type="email" name="email2" required id="email2"
							placeholder="Enter Email">
					</div>
				</div>
				<div class="info">
					<label class="form-check-label" for="terms"><input
						type="checkbox" value="checked" class="form-check-input"
						id="terms" name="terms" required> I agree to the <a
						href="#">Terms & Conditions</a></label>
				</div>
				<div id="infobutton">
					<button id="prev" name="prev" type="button">Prev</button>
					<button id="reset" name="resset" type="reset">Reset</button>
					<button id="submit" name="submit" type="submit">Submit</button>
				</div>
			</div>
		</form>
	</div>
	<footer>
		<div class="bottom-bar">
			<p>
				© 2024-2025 RGSDSA Bank, Inc. · <a href="#">Privacy</a> · <a
					href="#">Terms</a>
			</p>
		</div>
		<div class="social-media">
			<p>
				<a href=""><i class="fa-brands fa-facebook-f"></i> <a
					href="https://www.instagram.com/invites/contact/?igsh=16l2e2qtzuffe&utm_content=nxkbjsx"><i
						class="fa-brands fa-instagram"></i></a> <a href=""><i
						class="fa-brands fa-x-twitter"></i></a> <a
					href="www.linkedin.com/in/www.linkedin.com/in/www.linkedin.com/in/sahdev-puran403"><i
						class="fa-brands fa-linkedin-in"></i></a>
			</p>
		</div>
	</footer>
</body>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    const sections = document.querySelectorAll('.infoBoxes');
    const nextButtons = document.querySelectorAll('button[name="next"]');
    const prevButtons = document.querySelectorAll('button[name="prev"]');

    let currentSection = 0;

    sections.forEach((section, index) => {
      if (index !== 0) section.style.display = 'none';
    });

    nextButtons.forEach(button => {
      button.addEventListener('click', () => {
        if (currentSection < sections.length - 1) {
          sections[currentSection].style.display = 'none';
          currentSection++;
          sections[currentSection].style.display = 'block';
          window.scrollTo(0, 0);
        }
      });
    });

    prevButtons.forEach(button => {
      button.addEventListener('click', () => {
        if (currentSection > 0) {
          sections[currentSection].style.display = 'none';
          currentSection--;
          sections[currentSection].style.display = 'block';
          window.scrollTo(0, 0);
        }
      });
    });
  });


  var myCarousel = document.querySelector('#carouselExampleCaptions');
  var carousel = new bootstrap.Carousel(myCarousel, {
    interval: 5000,  // 10 seconds
    ride: 'carousel'
  });

</script>

</body>
</html>