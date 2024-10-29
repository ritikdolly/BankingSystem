<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>STAR VEHICLE LOAN - ENTITIES OTHER THAN INDIVIDUAL
	|Features</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<style>
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

/* -------Container --------*/
.userContainer {
	margin-top: 30px;
}

.Usernav.active {
	color: black !important;
	/* Ensures the text color is black */
	font-weight: 650;
	/* Sets the font weight to 500 */
}

/* cards */
.userCard:hover {
	transform: scale(1.05);
	transition: ease 1s;
}

/*     Footer   */
.footerChange {
	padding: 30px 0px;
}
</style>
<!------------------ curousel------------------------->
<style>
.product-detail-banner {
	border-bottom-right-radius: 150px;
}

.py-3-xxl {
	padding: 40px 0 !important;
}

.banner-left-text {
	margin-top: 24px;
}

.portlet-content {
	padding: 0 !important;
}

.autofit-float.autofit-row.portlet-header {
	margin: 0 !important;
}

@media ( min-width : 260px) {
	.product-detail-banner {
		width: 100%;
		max-height: 250px;
		min-height: 250px;
	}
	#product-banner .left-text h1 {
		font-size: 48px;
		line-height: 50px;
		font-family: Montserrat;
		font-weight: 800 !important;
	}
	#product-banner .left-text .top-small-banner-heading {
		font-size: 18px;
		line-height: 20px;
		font-family: Montserrat;
		font-weight: 600;
	}
	#product-banner .left-text p {
		font-size: 16px;
		line-height: 28px;
		font-family: Montserrat;
	}
}

@media ( max-width : 767px) {
	.arrow-btn-bg {
		padding: 4px 5px;
		background: #F6821E;
		border-radius: 8px;
		margin-right: 16px;
	}
}

@media ( min-width : 320px) {
	.banner1 .annimated-button {
		padding: 4px 67px 4px 8px;
		width: 280px;
		font: bold 16px/22px Open Sans;
	}
	.banner1 .annimated-button:hover .btn-text, .banner1 .annimated-button:focus .btn-text
		{
		color: white;
	}
	.btn-text {
		font: bold 18px/24px Open Sans;
	}
}

@media ( min-width : 768px) {
	.product-detail-banner {
		max-height: 412px;
	}
	.banner1 .annimated-button {
		padding: 4px 44px 4px 8px;
		width: auto;
		font: bold 16px/20px Open Sans;
		margin-top: 16px;
	}
	#product-banner .left-text h1 {
		font-size: 72px;
		line-height: 80px;
	}
}

@media ( min-width : 992px) {
	.banner1 .annimated-button {
		padding: 4px 44px;
		font-size: 16px;
	}
	.arrow-btn-bg {
		padding: 6px;
		margin-right: 6px;
	}
	.py-3-xxl {
		padding: 80px 0 !important;
	}
	#product-banner .left-text h1 {
		font-size: 60px;
		line-height: 70px;
	}
	.product-detail-banner {
		max-height: 500px;
	}
}
</style>
</head>

<body>
	<nav class="navbar navbar-dark bg-primary fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="../index.jsp"> <svg
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
							aria-current="page" href="vehicleLoan.jsp">Home</a></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Other </a>
							<ul class="dropdown-menu custom-dropdown">
								<li><a class="dropdown-item"
									href="starVehiclesLoanIndiv.jsp">Vehicle Loan-Individuals</a></li>
								<li><a class="dropdown-item"
									href="starVehicleLoanDoctorPlus.jsp">Vehicle Loan-Doctor
										Plus</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link "
							href="../calculator.html">Calculator</a></li>
						<li class="nav-item"><a class="nav-link "
							href="../loginPage.jsp">Login</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>

	<!--    Container      -->
	<div class="container userContainer">
		<section class="banner1 pt-4 oversease-banner" id="product-banner">
			<div class="container">
				<div class="row">
					<div
						class="col-lg-4 order-2  left-text order-sm-2 order-md-2 order-lg-1 pl-0 pl-mob-grid banner-left-text">
						<div class="top-small-banner-heading">Know more about</div>
						<h1 id="banner-long-title" style="font-size: 45px;"
							class=" font-weight-bold text-uppercase">STAR VEHICLE LOAN -
							ENTITIES OTHER THAN INDIVIDUAL</h1>
						<p>RGSDSA STAR VEHICLE LOAN SCHEME- ENTITIES OTHER THAN
							INDIVIDUALS</p>
					</div>
					<div
						class="col-lg-8 order-1 order-sm-1 order-md-1 order-lg-2 pr-0 pr-mob-grid">
						<picture data-fileentryid="24947718">
						<source media="(max-width:300px)"
							srcset="/o/adaptive-media/image/24947718/Thumbnail-300x300/home-loans.webp?t=1723780756410">
						<source media="(max-width:1000px) and (min-width:300px)"
							srcset="/o/adaptive-media/image/24947718/Preview-1000x0/home-loans.webp?t=1723780756410">
						<picture data-fileentryid="24947718">
						<source media="(max-width:300px)"
							srcset="/o/adaptive-media/image/24947718/Thumbnail-300x300/home-loans.webp?t=1723780756410">
						<source media="(max-width:1000px) and (min-width:300px)"
							srcset="/o/adaptive-media/image/24947718/Preview-1000x0/home-loans.webp?t=1723780756410">
						<img class="img-fluid boder-img product-detail-banner"
							alt="Personal Loans" title="Personal Loans"
							data-fileentryid="24947718"
							src="https://bankofindia.co.in/documents/20121/24950596/star-vehicle-loan-other-than-individual.webp/a65e256c-ff01-72f9-302e-f02707b4f2f9?t=1723781766093">
						</picture> </picture>
					</div>
				</div>
			</div>
		</section>
		<br>
		<!-- Second row...-->

		<div class="row">

			<ul class="nav nav-tabs " id="myTab" role="tablist">
				<li class="nav-item" role="presentation">
					<button class="nav-link Usernav active text-dark-emphasis"
						id="Feature-tab" data-bs-toggle="tab"
						data-bs-target="#Feature-tab-pane" type="button" role="tab"
						aria-controls="Feature-tab-pane" aria-selected="true">FEATURES</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link Usernav text-dark-emphasis"
						id="Eligibility-tab" data-bs-toggle="tab"
						data-bs-target="#Eligibility-tab-pane" type="button" role="tab"
						aria-controls="Eligibility-tab-pane" aria-selected="false">ELIGIBILITY</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link Usernav text-dark-emphasis"
						id="interest-tab" data-bs-toggle="tab"
						data-bs-target="#interest-tab-pane" type="button" role="tab"
						aria-controls="interest-tab-pane" aria-selected="false">INTEREST
						RATE & CHARGES</button>
				</li>
				<li class="nav-item" role="presentation"></li>
				<button class="nav-link Usernav text-dark-emphasis" id="doc-tab"
					data-bs-toggle="tab" data-bs-target="#doc-tab-pane" type="button"
					role="tab" aria-controls="doc-tab-pane" aria-selected="false">DOCUMENT</button>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="Feature-tab-pane"
					role="tabpanel" aria-labelledby="Feature-tab" tabindex="0">
					<!-- Feature -->
					<div class="col-12">
						<div class="card border-0">
							<div class="card-body pb-0 pt-0 px-0">
								<h4 class="tabheadingmand tabseo tab-contet-botom-headin my-3">STAR
									VEHICLE LOAN - ENTITIES OTHER THAN INDIVIDUAL - FEATURES</h4>
								<hr class="selectedtabhr" style="display: block;">
								<div class="col-md-12 my-3">
									<h5 class="tab-contet-botom-headin"></h5>
									<ul class="pl-3 normal-text my-3 List-eligiblity">
										<li class="my-2">Purchase of light personal vehicles not
											requiring heavy duty driving license viz; Jeeps, Vans etc</li>
										<li class="my-2">For purchase of Water vehicles such as
											Motor Boats / Boats / Sports Boats and other water vehicles
											for personal use</li>
										<li class="my-2">Vehicles powered by non-conventional
											energy, such as electronic / battery operated small vehicles
											for urban transport provided not registered with RTO can be
											financed subject to specified curtailed limits of advance
											preferably with collateral security.</li>
										<li class="my-2">Maximum limits No Maximum Limit</li>
										<li class="my-2">(Can be multiple personal vehicles,
											registration of vehicle as personal and not to be used for
											commercial)</li>
										<li class="my-2">Maximum repayment tenure :- Max. 84
											months.</li>
										<li class="my-2">Maximum quantum up to 90% for New
											vehicles only</li>
									</ul>
								</div>
								<div class="col-md-12 my-3">
									<h5 class="tab-contet-botom-headin">Advantages</h5>
									<ul class="pl-3 normal-text my-3 List-eligiblity">
										<li class="my-2">Maximum Limit: No Limit</li>
										<li class="my-2">More than one vehicle can be considered
											within the above limits, provided the first account is in
											order Hypothecation charge is duly registered and repayments
											are regular.</li>
										<li class="my-2">No hidden charges</li>
										<li class="my-2">No prepayment penalty</li>
										<li class="my-2">Minimal documentation</li>
										<li class="my-2">Up to 90%financing</li>
										<li class="my-2">High Network of dealers.</li>
										<li class="my-2">Reimbursement of cost of four wheeler
											vehicle purchased from own sources subject to specified
											conditions.</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Eligibility----->
				<div class="tab-pane fade" id="Eligibility-tab-pane" role="tabpanel"
					aria-labelledby="Eligibility-tab" tabindex="0">
					<div class="col-12">
						<div class="card border-0">
							<div class="card-body pb-0 pt-0 px-0">
								<h4 class="tabheadingmand tabseo tab-contet-botom-headin my-3">STAR
									VEHICLE LOAN - ENTITIES OTHER THAN INDIVIDUAL - ELIGIBILITY</h4>
								<hr class="selectedtabhr" style="display: block;">
								<div class="col-md-12 my-3">
									<h5 class="tab-contet-botom-headin"></h5>
									<ul class="pl-3 normal-text my-3 List-eligiblity">
										<li class="my-2">Companies, Partnership firms,
											Proprietary concern and other types of corporate entities.</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--- Rate ,interest and charges... -->
				<div class="tab-pane fade" id="interest-tab-pane" role="tabpanel"
					aria-labelledby="interest-tab" tabindex="0">
					<div class="col-12">
						<div class="card border-0">
							<div class="card-body pb-0 pt-0 px-0">
								<h4 class="tabheadingmand tabseo tab-contet-botom-headin my-3">STAR
									VEHICLE LOAN - ENTITIES OTHER THAN INDIVIDUAL - RATE OF
									INTEREST &amp; CHARGES</h4>
								<hr class="selectedtabhr" style="display: block;">
								<div class="col-md-12 my-3">
									<h5 class="tab-contet-botom-headin">Rate of Interest</h5>
									<ul class="pl-3 normal-text my-3 List-eligiblity">
										<li class="my-2">Starting from 8.85%</li>
										<li class="my-2">ROI is linked with CMR, Internal Or
											External Rating</li>
										<li class="my-2">ROI is calculated on daily reducing
											balance.</li>
									</ul>
								</div>
								<div class="col-md-12 my-3">
									<h5 class="tab-contet-botom-headin">Charges</h5>
									<ul class="pl-3 normal-text my-3 List-eligiblity">
										<li class="my-2">For New Four Wheeler Loan / Water
											vehicle Loan - 0.25% of limit, Min Rs. 1000/-, Max. Rs.
											5000/-.</li>
										<li class="my-2">For New Two Wheeler Loan / 2nd hand
											vehicle (both 2/4 wheelers) - 1% of the Loan amount, Minimum
											Rs. 500/- and Max. Rs. 10000/-</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Document need -->
				<div class="tab-pane fade" id="doc-tab-pane" role="tabpanel"
					aria-labelledby="doc-tab" tabindex="0">
					<div class="col-12">
						<div class="card border-0">
							<div class="card-body pb-0 pt-0 px-0">
								<h4 class="tabheadingmand tabseo tab-contet-botom-headin my-3">STAR
									VEHICLE LOAN - ENTITIES OTHER THAN INDIVIDUAL - DOCUMENTS</h4>
								<hr class="selectedtabhr" style="display: block;">
								<div class="col-md-12 my-3">
									<h5 class="tab-contet-botom-headin">For other than
										Individuals</h5>
									<ul class="pl-3 normal-text my-3 List-eligiblity">
										<li class="my-2">PAN Card copy of Company/Firm</li>
										<li class="my-2">Regd. Partnership Deed/MOA/AOA</li>
										<li class="my-2">Certificate of incorporation as
											applicable</li>
										<li class="my-2">Account statement for last 12 months</li>
										<li class="my-2">Firm’s Audited Financials for last 3
											years</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-12">
					<div class="card border-0">
						<div class="col-md-12 my-3">
							<h3 class="tab-contet-botom-headin"></h3>
							<p class="normal-text my-3 text-justify">*Terms &amp;
								Conditions apply. For further details, Please contact your
								Nearest Branch</p>
						</div>
					</div>
				</div>
				<hr>
			</div>

			<!---- fourth ROW-->

			<div class="mb-5">
				<h2 class="big-heading">PRODUCTS YOU MAY LIKE</h2>
				<div class="border-blue"></div>
			</div>

			<div class="row" style="width: auto;">
				<div class="col mb-3">
					<!--col 1-->
					<div class="card userCard" style="width: 18rem; height: 390px;">
						<img
							src="https://bankofindia.co.in/documents/20121/24950596/star-vehicle-loan-individual.webp/7ec12441-c02a-e0e2-63bd-804bae7b36e0?t=1723781746598"
							class="card-img-top" alt="STAR Individual LOAN">
						<div class="card-body d-flex justify-content-between flex-column">
							<h5 class="card-title">STAR VEHICLE LOAN - INDIVIDUAL</h5>
							<p class="card-text">To avail loan for your dream vehicle</p>
							<a href="starVehiclesLoanIndiv.jsp"
								class="icon-link gap-1 icon-link-hover stretched-link">
								Learn More <svg xmlns="http://www.w3.org/2000/svg" width="16"
									height="16" fill="currentColor" class="bi bi-arrow-right"
									viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
										d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8" />
                                </svg> <svg class="bi">
                                    <use xlink:href="#chevron-right"></use>
                                </svg>
							</a>
						</div>
					</div>
				</div>
				<!--- col 2 -->
				<div class="col mb-3">
					<div class="card userCard" style="width: 18rem; height: 390px;">
						<img
							src="https://bankofindia.co.in/documents/20121/24950596/star-vehicle-loan-doctor-plus.webp/d1dc5583-411d-ad28-bf2e-249ccfb1df2a?t=1723781787561"
							class="card-img-top" alt="STAR VEHICLE LOAN - DOCTOR PLUS">
						<div class="card-body d-flex justify-content-between flex-column">
							<h5 class="card-title">STAR VEHICLE LOAN - DOCTOR PLUS</h5>
							<p class="card-text">Individuals and Proprietorship Firms</p>
							<a href="starVehicleLoanDoctorPlus.jsp"
								class="icon-link gap-1 icon-link-hover stretched-link">
								Learn More <svg xmlns="http://www.w3.org/2000/svg" width="16"
									height="16" fill="currentColor" class="bi bi-arrow-right"
									viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
										d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8" />
                                </svg> <svg class="bi">
                                    <use xlink:href="#chevron-right"></use>
                                </svg>
							</a>
						</div>
					</div>
				</div>
			</div>
			<br>
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
				© 2024–2025 RGSDSA Bank, Inc. · <a href="#">Privacy</a> · <a
					href="#">Terms</a>
			</p>
		</footer>

		<!--  Script   -->
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
			crossorigin="anonymous"></script>
</body>

</html>