<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Staff-List</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<style>
body {
	background-color: #afb2b4
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

/*  -----Container-----  */
.UserName {
	margin: 60px 0px 0px 75px;
}

/*     Footer   */
.footerChange {
	padding: 30px 0px;
}

/* hover Code*/
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
							aria-current="page" href="<%= request.getContextPath()%>/staffModify?action=home&mainUser=${mainUser}">Home</a></li>
						<li><a href="<%= request.getContextPath()%>/staffModify?action=all&mainUser=${mainUser}" class="nav-link">Staff-List</a>
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
		<ul class="navbar-nav">
			<li><a
				href="<%=request.getContextPath()%>/staffModify?action=all"
				class="nav-link"> </a></li>
		</ul>
	</nav>

	<p class="h1 UserName text-center">Employee Updation</p>
	<br>
	<br>
	<div class="container userContainer">
		<form class="row g-3" action="staffModify?action=update&id=${empId}"
			method="post">
			<div class="col-md-6">
				<label for="fname" class="form-label">First Name</label> <input
					type="text" name="fname" value="${fname}" class="form-control"
					id="fname">
			</div>
			<div class="col-md-6">
				<label for="lname" class="form-label">Last Name</label> <input
					type="text" class="form-control" value="${lname}" id="lname"
					name="lname">
			</div>
			<div class="col-12">
				<label for="dob" class="form-label">Date Of Birth</label> <input
					type="date" class="form-control" name="dob" value="${dob}" id="dob"
					placeholder="Apartment, studio, or floor">
			</div>
			<div class="col-12">
				<label for="fatherName" class="form-label">Father's Name</label> <input
					type="text" class="form-control" value="${fatherName}"
					name="fatherName" id="inputAddress" placeholder="">
			</div>
			<div class="col-12">
				<label for="inputAddress" class="form-label">Address</label> <input
					type="text" class="form-control" value="${address}" name="address"
					id="inputAddress" placeholder="">
			</div>
			<div class="col-md-4">
				<label for="inputCity" class="form-label">City</label> <input
					type="text" class="form-control" value="${city}" name="city"
					id="inputCity">
			</div>
			<div class="col-md-4">
				<label for="phoneNumber" class="form-label">Phone Number</label> <input
					type="text" maxlength="10" class="form-control" value="${phoneNo}"
					name="phoneNumber" id="phoneNumber">
			</div>
			<div class="col-md-4">
				<label for="emergencyNo" class="form-label">Emergency Number</label>
				<input type="text" class="form-control" value="${emergencyNO}"
					name="emergencyNo" id="emergencyNo">
			</div>
			<div class="col-md-6">
				<label for="email" class="form-label">E-mail</label> <input
					type="email" class="form-control" value="${email}" name="email"
					id="email">
			</div>
			<div class="col-md-6">
				<label for="position" class="form-label">Position</label> <input
					type="text" class="form-control" value="${position}"
					name="position" id="position">
			</div>
			<fieldset class="row mb-3">
				<legend class="col-form-label col-sm-2 pt-0">Employment</legend>
				<div class="col-sm-10">
					<div class="form-check">
						<input class="form-check-input" required type="radio"
							name="workschedule" id="gridRadios1" value="Full Time">
						<label class="form-check-label" for="gridRadios1">Full
							Time </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="workschedule"
							id="gridRadios2" value="Part Time"> <label
							class="form-check-label" for="gridRadios2"> Part Time </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="workschedule"
							id="gridRadios3" value="Freelancing"> <label
							class="form-check-label" for="gridRadios3">Freelancing</label>

					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="workschedule"
							id="gridRadios4" value="Internship"> <label
							class="form-check-label" for="gridRadios4"> Internship </label>
					</div>
				</div>
			</fieldset>
			<label for="Reference1" class="form-label">Reference 1</label>
			<div class="col-md-3">
				<label for="reference1" class="form-label">Reference Name</label> <input
					type="text" value="${refName1}" class="form-control"
					name="reference1" id="reference1">
			</div>
			<div class="col-md-3">
				<label for="refrelation1" class="form-label">Relation with
					Reference</label> <input type="text" class="form-control"
					value="${relation1 }" name="refrelation1" id="refrelation1">
			</div>
			<div class="col-md-3">
				<label for="refphno1" class="form-label">Reference Phone
					Number</label> <input type="text" maxlength="10" class="form-control"
					value="${refPhNo1}" name="refphno1" id="refphno1">
			</div>
			<div class="col-md-3">
				<label for="refemail1" class="form-label">Reference E-mail</label> <input
					type="email" class="form-control" value="${refEmail1}"
					name="refemail1" id="refemail1">
			</div>

			<!-- Reference2 -->
			<label for="Reference2" class="form-label">Reference 2</label>
			<div class="col-md-3">
				<label for="reference2" class="form-label">Reference Name</label> <input
					type="text" value="${refName2}" class="form-control"
					name="reference2" id="reference2">
			</div>
			<div class="col-md-3">
				<label for="refrelation2" class="form-label">Relation b/w
					Reference</label> <input type="text" value="${relation2 }"
					class="form-control" name="refrelation2" id="refrelation2">
			</div>
			<div class="col-md-3">
				<label for="refphno2" class="form-label">Reference Phone
					Number</label> <input type="text" maxlength="10" value="${refPhNo2}"
					class="form-control" name="refphno2" id="refphno2">
			</div>
			<div class="col-md-3">
				<label for="refemail2" class="form-label">Reference E-mail</label> <input
					type="email" class="form-control" value="${refEmail2}"
					name="refemail2" id="refemail2">
			</div>
			<div class="form-check">
				<input class="form-check-input" required type="checkbox"
					id="gridCheck"> <label class="form-check-label"
					for="gridCheck"> Check me out </label>
			</div>
			<div class="col-12">
				<button class="btn btn-primary" type="submit">Submit</button>

			</div>
		</form>
	</div>





	<hr class="featurette-divider ">

	<footer class="container footerChange">
		<p class="float-end">
			<a href="#">Back to top<svg xmlns="http://www.w3.org/2000/svg"
					width="16" height="16" fill="currentColor" class="bi bi-arrow-up"
					viewBox="0 0 16 16">
      <path fill-rule="evenodd"
						d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5" />
    </svg></a>
		</p>
		<p>
			© 2024–2025 RGSDSA Bank, Inc. · <a href="#">Privacy</a> · <a href="#">Terms</a>
		</p>
	</footer>

	<!--  Script   -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>

</html>