<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Customer List</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<style>
/* Custom styles */
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
.custom-dropdown {
	background-color: white !important;
}
.custom-dropdown .dropdown-item {
	color: black !important;
}
.custom-dropdown .dropdown-item:hover {
	background-color: rgba(0, 0, 0, 0.1);
}
.UserName {
	margin: 60px 0px 0px 75px;
	min-height: 500px;
}
.footerChange {
	padding: 30px 0px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-dark bg-primary fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp"> 
				<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
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
				<div class="offcanvas-header">
					<h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">
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
							aria-current="page" href="ManagerAccess.jsp">Home</a></li>
						<li><a
							href="<%=request.getContextPath()%>/customerModify?action=all"
							class="nav-link">Staff-List</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false">Other</a>
							<ul class="dropdown-menu custom-dropdown">
								<li><a class="dropdown-item"href="#">Create Customer</a></li>
								<li><a class="dropdown-item" href="<%=request.getContextPath()%>/customerModify?action=all">Customer
										Information</a></li>
								<li><a class="dropdown-item" href="#">Deposite Money</a></li>
							</ul></li>
						<li class="nav-item"></li>
						<a class="nav-link" href="index.jsp"> 
							<svg xmlns="http://www.w3.org/2000/svg"
								width="25" height="25" fill="currentColor"
								class="bi bi-box-arrow-right" viewBox="0 0 16 16">
                                <path fill-rule="evenodd"
									d="M10 12a.5.5 0 0 1 .5.5v3a1.5 1.5 0 0 1-1.5 1.5H2a1.5 1.5 0 0 1-1.5-1.5v-12A1.5 1.5 0 0 1 2 0h7a1.5 1.5 0 0 1 1.5 1.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 0-.5-.5H2a.5.5 0 0 0-.5.5v12a.5.5 0 0 0 .5.5h7a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 1 .5-.5z" />
                                <path fill-rule="evenodd"
									d="M14.354 8.354a.5.5 0 0 0 0-.708l-4-4a.5.5 0 0 0-.708.708L13.293 8l-3.647 3.646a.5.5 0 0 0 .708.708l4-4z" />
                                <path fill-rule="evenodd"
									d="M5 8a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 0-1h-8A.5.5 0 0 0 5 8z" />
                            </svg>
							LogOut
						</a>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<div class="UserName">
		<div class="container mt-5 pt-5">
			<h2 class="text-center">Customer List</h2>
			<a href="CustomerCreate.jsp" class="btn btn-success mb-3">Add New
				Customer</a>
			<div class="table-responsive">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Cust_ID</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email</th>
							<th>Account Type</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<%
							List<AddCustomer> listUser = (List<AddCustomer>) request.getAttribute("listUser");
							if (listUser != null) {
								for (AddCustomer user : listUser) {
						%>
						<tr>
							<td><%= user.getUsername() %></td>
							<td><%= user.getFirstname() %></td>
							<td><%= user.getLastname() %></td>
							<td><%= user.getEmail() %></td>
							<td><%= user.getAccounttype() %></td>
							<td>
								<a href="<%=request.getContextPath()%>/customerModify?action=edit&id=<%=user.getUsername()%>"
									>See More</a> |
								<a href="<%=request.getContextPath()%>/customerModify?action=edit&id=<%=user.getUsername()%>"
									>Edit</a> |
								<a href="<%=request.getContextPath()%>/customerModify?action=delete&id=<%=user.getUsername()%>"
									>Delete</a>
							</td>
						</tr>
						<%
								}
							}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="container-fluid bg-primary text-white text-center footerChange">
		<p>&copy; 2024 RGSDSA</p>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-RGIKs14mNAjpUasI0FvlsR/QHkDaDWwV1sW/DZFEOW7p4pB4EUOqQpT7rRXq8fg9"
		crossorigin="anonymous"></script>
</body>
</html>
