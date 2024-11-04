<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Staff Registration</title>

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
<style>
@charset "UTF-8";

/*     ----nav bar----    */
.navbar {
	padding: 5px 50px;
}

.navbar-brand, .offcanvas-title {
	width: 110px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.dropdown-menu .dropdown-item {
	color: #fff;
}

.userside-bar {
	max-width: 250px;
}

/* -----dropdown ---*/
.custom-dropdown {
	background-color: white !important;
}

.custom-dropdown .dropdown-item {
	color: black !important;
}

.custom-dropdown .dropdown-item:hover {
	background-color: rgba(0, 0, 0, 0.1);
	/* Slight gray background on hover */
}

/* Container and Form Styling */
.container {
	max-width: 900px;
	margin: auto;
	margin-top: 75px;
	padding: 20px;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
	margin-bottom: 20px;
	color: #007bff;
	text-shadow: 3px 2px 2px #aeaeae;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #030404;
}

/* Info Boxes */
.infoBoxes {
	margin-bottom: 20px;
}

.infoBoxes h2 {
	font-size: 18px;
	margin-bottom: 10px;
}

/* Input and Label Styling */
label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

input[type="text"], input[type="number"], input[type="date"], input[type="email"],
	textarea {
	width: 100%;
	padding: 10px;
	margin-top: 5px;
	font-size: 14px;
	border: 1px solid #ccc;
	border-radius: 4px;
	margin-bottom: 15px;
}

/* Flexbox for inputs in the same row */
.detail {
	display: flex;
	flex-wrap: wrap;
	gap: 15px;
	margin: 5px 0px 5px 0px;
}

.detail input {
	flex: 1;
}

/* Radio BUtton */
.radioButton span {
	padding-left: 10px;
}

input[type="radio"] {
	margin-right: 5px;
}
/* Address Style*/
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

/* Flexbox for buttons */
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

/* Responsive adjustments */
@media ( max-width : 768px) {
	.detail {
		flex-direction: column;
	}
	button {
		width: 100%;
	}
}
</style>
</head>

<body>
<% 
response.setHeader("cache-Control", "no-cache , no-store,must-revalidate");//http 1.1

response.setHeader("pragma", "no-cache");//http 1.0

response.setHeader("Expires", "0"); // proxies http
	

if(session.getAttribute("mainUser") == null)
	response.sendRedirect("withoutLogin.jsp");
%>
	<nav class="navbar navbar-dark bg-primary fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp"> <svg
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
							aria-current="page" href="<%= request.getContextPath()%>/staffModify?action=home&mainUser=${mainUser}">Home</a></li>
						<li><a
							href="<%= request.getContextPath()%>/staffModify?action=all&mainUser=${mainUser}"
							class="nav-link">Staff-List</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Other </a>
							<ul class="dropdown-menu custom-dropdown">
								<li><a class="dropdown-item"
									href="<%= request.getContextPath()%>/staffModify?action=all&mainUser=${mainUser}">Staff
										Information</a></li>
								<li><a class="dropdown-item" href="#">Customer
										Information</a></li>
								<li><a class="dropdown-item"
									href="<%= request.getContextPath()%>/staffModify?action=createStaff&mainUser=${mainUser}">Staff
										Creation</a></li>

							</ul></li>
						<li class="nav-item"><a class="nav-link "
							href="calculator.html">Calculator</a></li>
						<li class="nav-item"><a class="nav-link "
							href="<%= request.getContextPath()%>/staffModify?action=mainUserDetail&mainUser=${mainUser}">Your
								detail</a></li>

						<li class="nav-item"></li>
						<a class="nav-link " href="index.jsp"><svg
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
		<ul class="navbar-nav">
			<li><a href="<%=request.getContextPath()%>/staff"
				class="nav-link"> </a></li>
		</ul>
	</nav>


	<div class="container UserName">
		<div class="title-bar">
			<h1>Staff Registration</h1>
		</div>
		<form id="staffForm" action="staffRegistor" method="post">
			<div class="infoBoxes">
				<h2>Personal Information</h2>
				<div id="info">
					<label for="f-name">Name</label>
					<div class="detail name_style">
						<input type="text" id="f-name" required name="fname"
							placeholder="Enter First Name" /> <input type="text" id="l-name"
							required name="lname" placeholder="Enter Last Name" />
					</div>
				</div>
				<div id="info">
					<label for="gender-male">Gender</label>
					<div class="detail radioButton">
						<span><input type="radio" required name="gender"
							value="male" id="gender-male">Male</span> <span><input
							type="radio" name="gender" value="female" id="gender-female">Female</span>
						<span><input type="radio" name="gender" value="other"
							id="gender-other">Other</span>
					</div>
				</div>
				<div id="info">
					<label for="dob">DOB</label> <input type="date" id="date" required
						name="dob">
				</div>
				<div id="info">
					<label for="father-Name">Father's Name</label> <input type="text"
						id="father-Name" required name="fatherName"
						placeholder="Enter Father's Name" />
				</div>
				<div id="info">
					<label for="nationality-indian">Nationality</label>
					<div class="detail radioButton">
						<span><input type="radio" name="nationality" required
							value="Indian" id="nationality-indian">Indian</span> <span><input
							type="radio" name="nationality" value="other"
							id="nationality-other">Other</span>
					</div>
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
						</span> <span>Pin Code :<input type="Number" required
							id="pin-code" name="pincode" placeholder="Enter Pin Code" /></span>
					</div>
				</div>
				<div id="info">
					<label for="phone-number">Phone Number</label> <input type="text"
						required id="phone-number" maxlength="10" name="phoneNumber"
						placeholder="Enter Phone Number">
				</div>
				<div id="info">
					<label for="email">Email</label> <input type="email" required
						name="email" placeholder="Enter Email ID" />
				</div>
				<div id="info">
					<label for="emergency-number">Emergency Number</label> <input
						type="text" required maxlength="10" id="emergency-number"
						name="emergencyNo" placeholder="Enter Emergency Number">
				</div>
				<div id="infobutton">
					<button id="next" name="next" type="button">Next</button>
				</div>
			</div>
			<div class="infoBoxes">
				<h2>Employment Information</h2>
				<div id="info">
					<label for="position">Position</label> <input type="text" required
						name="position" id="position" placeholder="Enter position">
				</div>
				<div id="info">
					<label for="joining-date">Date of joining</label> <input
						type="date" required name="joiningdate" id="joining-date">
				</div>
				<div id="info">
					<label for="work-schedule-fulltime">Employment</label>
					<div class="detail radioButton">
						<span><input type="radio" required name="workschedule"
							value="Full Time" id="work-schedule-fulltime">Full Time</span> <span><input
							type="radio" name="workschedule" value="Part Time"
							id="work-schedule-parttime">Part Time</span> <span><input
							type="radio" name="workschedule" value="Feelacning"
							id="work-schedule-feelacning">Feelancing</span> <span><input
							type="radio" name="workschedule" value="Internship"
							id="work-schedule-internship">Internship</span>
					</div>
				</div>
				<div id="info">
					<label for="account-number">Account Number</label> <input
						type="text" required name="accountnumber" maxlength="11"
						id="account-number" placeholder="Enter Account Number ">
				</div>
				<div id="info">
					<label for="bank-name">Bank Name</label> <input type="text"
						required name="bankname" id="bank-name"
						placeholder="Enter Bank Name ">
				</div>
				<div id="info">
					<label for="tax-Id">Tax Identification Number</label> <input
						type="text" required name="taxId" id="tax-Id"
						placeholder="Enter Tax Identification Number ">
				</div>
				<div id="info">
					<label for="aadhar-No">Aadhar Number</label> <input type="text"
						required name="aadharNo" id="aadhar-No"
						placeholder="Enter Aadhar Number ">
				</div>
				<div id="info">
					<label for="pan-No">PAN Number</label> <input type="text" required
						name="panNo" id="pan-No"
						placeholder="Enter Tax Identification Number ">
				</div>
				<div id="infobutton">
					<button id="prev" name="prev" type="button">Prev</button>
					<button id="next" name="next" type="button">Next</button>
				</div>
			</div>
			<div class="infoBoxes">
				<h2>Education Qualification</h2>
				<div id="info">
					<div class="educate">
						<h3>Matriculate</h3>
						<div class="detail">
							<label for="year10">Passing Year <input type="text"
								required id="year10" name="year10" placeholder="YYYY" min="2000"
								max="2019"></label> <label for="school-name10">School
								Name <input type="text" required id="school-name10"
								placeholder="Enter School Name" name="schoolname10">
							</label> <label for="tenth-percent">Percentage<input
								type="number" required id="tenth-percent" min="60" max="100"
								placeholder="Enter percentage" name="tenthpercent"></label>

						</div>
						<h3>High School Graduate</h3>
						<div class="detail">
							<label for="year12">Passing Year <input type="text"
								id="year12" required name="year12" placeholder="YYYY" min="2000"
								max="2021"></label> <label for="school-name12">School/College
								Name <input type="text" required id="school-name12"
								placeholder="Enter School/college Name" name="schoolname12">
							</label> <label for="twelfth-percent">Percentage<input
								type="number" required id="tenth-percent" min="60" max="100"
								placeholder="Enter percentage" name="twelfthpercent"></label>
						</div>
						<h3>Other Qualification</h3>
						<div class="detail">
							<label for="degree-name">Degree Name<input type="text"
								required id="degree-name" placeholder="Enter degree name"
								name="degreename"></label> <label for="year-other">Passing
								Year <input type="text" required id="year-other"
								name="degreeyear" placeholder="YYYY" min="2000" max="2024">
							</label> <label for="college-name-other">College Name <input
								type="text" required id="college-name-other"
								placeholder="Enter college Name" name="collegename"></label> <label
								for="degree-percent">Percentage<input type="number"
								required id="degree-percent" min="60" max="100"
								placeholder="Enter percentage" name="degreepercent"></label>
						</div>
					</div>
				</div>
				<div id="infobutton">
					<button id="prev" name="prev" type="button">Prev</button>
					<button id="next" name="next" type="button">Next</button>
				</div>
			</div>
			<div class="infoBoxes">
				<h2>Employment History</h2>
				<div id="info">
					<div class="employer">
						<label for="previous-Emp">Previous Employer</label> <input
							type="text" required name="previousEmp" id="previousEmp"
							placeholder="Enter Company Name ">
					</div>
					<div class="employer">
						<label for="emp-position">Position</label> <input type="text"
							required name="empposition" id="emp-position"
							placeholder="Enter your Position ">
					</div>
					<div class="employer">
						<label for="emp-duration">Employment Duration</label> <input
							type="number" required id="emp-duration" name="empduration"
							placeholder="Duration">
					</div>
					<div id="info">
						<label for="leaving-reason">Reason for Leaving</label>
						<textarea name="leavingreason" required id="leaving-reason"
							placeholder="Enter Reason" rows="3"></textarea>
					</div>
				</div>
				<div id="infobutton">
					<button id="prev" name="prev" type="button">Prev</button>
					<button id="next" name="next" type="button">Next</button>
				</div>
			</div>
			<div class="infoBoxes">
				<h2>References</h2>
				<div id="info">
					<div class="employer ">
						<label for="ref1">Reference 1</label> <input type="text"
							name="reference1" required id="ref1"
							placeholder="Enter Reference Name "> <label
							for="relation1">RelationShip</label> <input type="text"
							name="refrelation1" required id="relation1"
							placeholder="Enter Relation ">
					</div>
					<div class="employer">
						<label for="ph-number1">Phone Number</label> <input type="text"
							name="refphno1" maxlength="10" required id="ph-number1"
							placeholder="Enter Phone Number"> <label for="email1">Email</label>
						<input type="email" name="refemail1" required id="email1"
							placeholder="Enter Email">
					</div>
				</div>
				<div id="info">
					<div class="employer">
						<label for="ref2">Reference 2</label> <input type="text"
							name="reference2" required id="ref2"
							placeholder="Enter Reference Name "> <label
							for="relation2">RelationShip</label> <input type="text"
							name="refrelation2" required id="relation1"
							placeholder="Enter Relation">
					</div>
					<div class="employer">
						<label for="ph-number2">Phone Number</label> <input type="number"
							name="refphno2" required id="ph-number2"
							placeholder="Enter Phone Number"> <label for="email2">Email</label>
						<input type="email" name="refemail2" required id="email2"
							placeholder="Enter Email">
					</div>
				</div>
				<div class="info">
					<label class="form-check-label" for="terms"><input
						type="checkbox" class="form-check-input" id="terms" name="terms"
						required> I agree to the <a href="#">Terms &
							Conditions</a></label>
				</div>
				<div id="infobutton">
					<button id="prev" name="prev" type="button">Prev</button>
					<button id="reset" name="resset" type="reset">Reset</button>
					<button id="submit" name="submit" type="submit">Submit</button>
				</div>
			</div>
		</form>
	</div>
</body>
<script type="text/javascript">
/**
 * 
 */
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
                   window.scrollTo(0, 0); // Scroll to the top when the next section is shown
               }
           });
       });
   
       // Show the previous section
       prevButtons.forEach(button => {
           button.addEventListener('click', () => {
               if (currentSection > 0) {
                   sections[currentSection].style.display = 'none';
                   currentSection--;
                   sections[currentSection].style.display = 'block';
                   window.scrollTo(0, 0); // Scroll to the top when the previous section is shown
               }
           });
       });
   });
   </script>
</html>