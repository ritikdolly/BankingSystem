<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Confirmation</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<style>
body {
	background-color: #f2f5f9;
	font-family: 'Helvetica Neue', sans-serif;
	color: #333;
}

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

.container {
	max-width: 850px;
	margin-top: 40px;
	background-color: #ffffff;
	padding: 20px 30px;
	border-radius: 8px;
	box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
}

h3 {
	color: #28a745;
	font-weight: bold;
	text-align: center;
	margin-bottom: 30px;
}

.section-title {
	font-size: 1.25rem;
	color: #17a2b8;
	margin-bottom: 15px;
	padding-bottom: 5px;
	border-bottom: 2px solid #17a2b8;
}

.details, .nominee-section {
	margin-bottom: 30px;
}

.details p, .nominee-section p {
	font-size: 1rem;
	line-height: 1.8;
	margin: 0;
}

.divider {
	border-bottom: 1px solid #dee2e6;
	margin: 20px 0;
}

.print-btn {
	display: block;
	margin: 30px auto 0;
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	font-size: 1rem;
	font-weight: bold;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.print-btn:hover {
	background-color: #0056b3;
}

.icon {
	color: #17a2b8;
	margin-right: 10px;
}

.card {
	border: 1px solid #dee2e6;
	border-radius: 8px;
	padding: 20px;
	margin-bottom: 20px;
}

.sub-title {
	font-weight: 510;
	color: #088cde;
}

@media print {
	nav, footer, hr {
		display: none;
	}
	body {
		margin: 0;
		background: none;
	}
	.container .details:nth-child(4) {
		margin: 10px;
		padding: 50px 15px 15px 15px;
	}
	.container .details {
		margin: 10px;
		padding: 15px;
	}
	.container button {
		display: none;
	}
	@page {
		margin: 0;
	}
	body {
		margin: 1cm;
	}
}

/*     Footer   */
.footerChange {
	padding: 30px 0px;
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
	</nav>

	<div class="container">
		<h3>
			<i class="fa fa-check-circle icon"></i>Registration Successful
		</h3>

		<div class="details card">
			<h5 class="section-title">
				<i class="fa fa-user icon"></i>Personal Details
			</h5>
			<p>
				<strong>USer ID: </strong> ${empId} 
			</p>
			<p>
				<strong>Password: </strong> ${pwd}
			</p>
			<p>
				<strong>Name: </strong> ${fname} ${lname}
			</p>
			<p>
				<strong>Gender: </strong> ${gender}
			</p>
			<p>
				<strong>Date of Birth: </strong> ${dob}
			</p>
			<p>
				<strong>Father's Name: </strong> ${fatherName}
			</p>
			<p>
				<strong>Nationality: </strong> ${nationally}
			</p>
			<p>
				<strong>Address: </strong> ${address}
			</p>
			<p>
				<strong>City: </strong> ${city}
			</p>
			<p>
				<strong>District: </strong> ${district}
			</p>
			<p>
				<strong>State: </strong> ${state}
			</p>
			<p>
				<strong>Pin Code: </strong> ${pinCode}
			</p>

			<p>
				<strong>Aadhaar Number: </strong> ${aadhaarNo}
			</p>
			<p>
				<strong>Pan Number: </strong> ${panNo}
			</p>
			<p>
				<strong>Email: </strong> ${email}
			</p>
			<p>
				<strong>Phone Number: </strong> ${phoneNo}
			</p>
			<p>
				<strong>Emergency Number: </strong> ${emergencyNO}
			</p>
		</div>

		<div class="details card">
			<h5 class="section-title">
				<i class="fa fa-user icon"></i>Employment Information
			</h5>
			<p>
				<strong>Position : </strong>${postion}
			</p>
			<p>
				<strong>Date of joining: </strong>${dateofJoin}
			</p>
			<p>
				<strong>Employment Workschedule: </strong>${workschedule}
			</p>
			<p>
				<strong>Account Number: </strong>${accNo}
			</p>
			<p>
				<strong>Bank Name: </strong>${bankName}
			</p>
			<p>
				<strong>Tax Identification Number: </strong>${taxId}
			</p>
		</div>

		<div class="details card">

			<h5 class="section-title">
				<i class="fa fa-user icon"></i>Education Qualification
			</h5>
			<!-- 10th -->
			<h5 class="sub-title">Matriculate</h5>
			<p>
				<strong>Passing Year: </strong>${year10}
			</p>
			<p>
				<strong>School Name: </strong>${schoolName10}
			</p>
			<p>
				<strong>Percentage: </strong>${tenthpercent}
			</p>
			<!-- 12th -->
			<h5 class="sub-title">High School Graduate</h5>
			<p>
				<strong>Passing Year: </strong>${year12}
			</p>
			<p>
				<strong>School/college Name: </strong>${schoolName12}
			</p>
			<p>
				<strong>Percentage: </strong>${twelthpercent}
			</p>
			<!-- 12th -->
			<h5 class="sub-title">Other Qualification</h5>
			<p>
				<strong>Degree Name: </strong>${degreeName}
			</p>
			<p>
				<strong>Passing Year: </strong>${degreeyear}
			</p>
			<p>
				<strong>School/college Name: </strong>${collegeName}
			</p>
			<p>
				<strong>Percentage: </strong>${degreepercent}
			</p>

		</div>

		<div class="nominee-section card">
			<h5 class="section-title">
				<i class="fa fa-user-friends icon"></i>References 1
			</h5>
			<p>
				<strong>Reference Name:</strong> ${refName1}
			</p>
			<p>
				<strong>RelationShip:</strong> ${relation1}
			</p>
			<p>
				<strong>Phone Number:</strong> ${refPhNo1}
			</p>
			<p>
				<strong>Email:</strong> ${refEmail1}
			</p>
		</div>

		<div class="nominee-section card">
			<h5 class="section-title">
				<i class="fa fa-user-friends icon"></i>Reference 2
			</h5>
			<p>
				<strong>Reference Name:</strong> ${refName2}
			</p>
			<p>
				<strong>Relationship:</strong> ${relation2}
			</p>
			<p>
				<strong>Phone Number:</strong> ${refPhNo2}
			</p>
			<p>
				<strong>Email:</strong> ${refEmail2}
			</p>
		</div>

		<button class="print-btn" onclick="window.print()">
			<i class="fa fa-print icon"></i>Print
		</button>
	</div>

	<hr class="featurette-divider ">

	<footer class="footerChange">
		<div style="padding: 0px 80px;">
			<p class="float-end">
				<a href="#">Back to top<svg xmlns="http://www.w3.org/2000/svg"
						width="16" height="16" fill="currentColor" class="bi bi-arrow-up"
						viewBox="0 0 16 16">
              <path fill-rule="evenodd"
							d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5" />
            </svg></a>
			</p>
			<p>
				© 2024–2025 RGSDSA Bank, Inc. · <a href="#">Privacy</a> · <a
					href="#">Terms</a>
			</p>
		</div>
	</footer>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>