<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>STAR TOP UP LOAN |Features</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
        /*     ----nav bar----    */
        .navbar {
            padding: 5px 50px;
        }

        .navbar-brand,
        .offcanvas-title {
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

        @media (min-width: 260px) {
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

        @media (max-width: 767px) {
            .arrow-btn-bg {
                padding: 4px 5px;
                background: #F6821E;
                border-radius: 8px;
                margin-right: 16px;
            }
        }

        @media (min-width: 320px) {
            .banner1 .annimated-button {
                padding: 4px 67px 4px 8px;
                width: 280px;
                font: bold 16px/22px Open Sans;
            }

            .banner1 .annimated-button:hover .btn-text,
            .banner1 .annimated-button:focus .btn-text {
                color: white;
            }

            .btn-text {
                font: bold 18px/24px Open Sans;
            }
        }

        @media (min-width: 768px) {
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

        @media (min-width: 992px) {
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
            <a class="navbar-brand" href="../index.jsp">
                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-bank"
                    viewBox="0 0 16 16">
                    <path
                        d="m8 0 6.61 3h.89a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H15v7a.5.5 0 0 1 .485.38l.5 2a.498.498 0 0 1-.485.62H.5a.498.498 0 0 1-.485-.62l.5-2A.5.5 0 0 1 1 13V6H.5a.5.5 0 0 1-.5-.5v-2A.5.5 0 0 1 .5 3h.89zM3.777 3h8.447L8 1zM2 6v7h1V6zm2 0v7h2.5V6zm3.5 0v7h1V6zm2 0v7H12V6zM13 6v7h1V6zm2-1V4H1v1zm-.39 9H1.39l-.25 1h13.72z" />
                </svg> RGSDSA</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end bg-primary userside-bar text-white" tabindex="-1"
                id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                <div class="offcanvas-header ">
                    <h5 class="offcanvas-title " id="offcanvasDarkNavbarLabel"><svg xmlns="http://www.w3.org/2000/svg"
                            width="25" height="25" fill="currentColor" class="bi bi-bank" viewBox="0 0 16 16">
                            <path
                                d="m8 0 6.61 3h.89a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H15v7a.5.5 0 0 1 .485.38l.5 2a.498.498 0 0 1-.485.62H.5a.498.498 0 0 1-.485-.62l.5-2A.5.5 0 0 1 1 13V6H.5a.5.5 0 0 1-.5-.5v-2A.5.5 0 0 1 .5 3h.89zM3.777 3h8.447L8 1zM2 6v7h1V6zm2 0v7h2.5V6zm3.5 0v7h1V6zm2 0v7H12V6zM13 6v7h1V6zm2-1V4H1v1zm-.39 9H1.39l-.25 1h13.72z" />
                        </svg> RGSDSA</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"
                        aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="HomeLoan.jsp">Home</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                aria-expanded="false">
                                Other
                            </a>
                            <ul class="dropdown-menu custom-dropdown">
                                <li><a class="dropdown-item" href="starDiamondHomeLoan.jsp">Star Diamond Home Loan</a></li>
                                <li><a class="dropdown-item" href="starPravasiHomeLoan.jsp">STAR Pravasi Homae LOAN</a></li>
                                <li><a class="dropdown-item" href="starHomeLoan.jsp">Star Home Loan</a></li>
                                <li><a class="dropdown-item" href="starSmartHomeLoan.jsp">Star Smart Home Loan</a></li>
                            </ul>
                            </li>
                            <li class="nav-item">
	                        <a class="nav-link " href="../calculator.html">Calculator</a>
	                        </li>
	                        <li class="nav-item">
	                        <a class="nav-link " href="../loginPage.jsp">Login</a>
	                        </li>
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
                        <div class="top-small-banner-heading">
                            Know more about
                        </div>
                        <h1 id="banner-long-title" class="primary-text-color font-weight-bold text-uppercase">STAR TOP UP LOAN</h1>
                        <p class="mb-lg-5 mb-sm-3 text-justify">Easily top up your existing loan.</p>
                    </div>
                    <div class="col-lg-8 order-1 order-sm-1 order-md-1 order-lg-2 pr-0 pr-mob-grid">
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
                                <img class="img-fluid boder-img product-detail-banner" alt="Home Loans"
                                    title="Home Loans" data-fileentryid="24947718"
                                    src="https://bankofindia.co.in/documents/20121/24947716/STARTOPUPLOAN.webp/43e89941-f004-a7d6-d32f-1e4077e77e49?t=1723780971602">
                            </picture>
                        </picture>
                    </div>
                </div>
            </div>
        </section>
        
        <br>
        <div class="row">

            <!-- Second row...-->
            <ul class="nav nav-tabs " id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link Usernav active text-dark-emphasis" id="home-tab" data-bs-toggle="tab"
                        data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane"
                        aria-selected="true">FEATURES</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link Usernav text-dark-emphasis" id="profile-tab" data-bs-toggle="tab"
                        data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane"
                        aria-selected="false">ELIGIBILITY</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link Usernav text-dark-emphasis" id="contact-tab" data-bs-toggle="tab"
                        data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane"
                        aria-selected="false">INTEREST RATE & CHARGES</button>
                </li>
                <li class="nav-item" role="presentation"></li>
                <button class="nav-link Usernav text-dark-emphasis" id="doc-tab" data-bs-toggle="tab"
                    data-bs-target="#doc-tab-pane" type="button" role="tab" aria-controls="doc-tab-pane"
                    aria-selected="false">DOCUMENT</button>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <!-- col 1-->
                <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab"
                    tabindex="0">
                    <div class="col-12">
                        <div class="card border-0">
                         <div class="card-body pb-0 pt-0 px-0">
                          <h4 class="tabheadingmand tabseo tab-contet-botom-headin my-3">STAR TOP UP LOAN - FEATURES</h4>
                          <hr class="selectedtabhr" style="display: block;">
                          <div class="col-md-12 my-3">
                           <h5 class="tab-contet-botom-headin"></h5>
                           <ul class="pl-3 normal-text my-3 List-eligiblity">
                            <li class="my-2">EMI starts @ Rs.887/- per Lakh</li>
                            <li class="my-2">Holiday/Moratorium period up to 36 months</li>
                            <li class="my-2">Income of co-applicant (close relative) considered for eligibility</li>
                            <li class="my-2">Smart Home Loan (OD facility) for entire limit/outstanding balance @ROI of Home Loan</li>
                            <li class="my-2">Takeover/Balance Transfer facility with additional Loan amount</li>
                            <li class="my-2">Instant Top Up Loan Available</li>
                            <li class="my-2">Loan facility for furnishing of house @ROI Home Loan</li>
                            <li class="my-2">Loan facility for purchasing Solar PV @ROI Home Loan</li>
                            <li class="my-2">Loan facility for addition/extension/renovation of existing property</li>
                            <li class="my-2">Insurance premium considered under Project Cost (treated as Home Loan component)</li>
                            <li class="my-2">Step up/Step Down EMI facility</li>
                           </ul>
                          </div>
                          <div class="col-md-12 my-3">
                           <h5 class="tab-contet-botom-headin">Advantages</h5>
                           <ul class="pl-3 normal-text my-3 List-eligiblity">
                            <li class="my-2">Low interest rate</li>
                            <li class="my-2">Minimal documentation</li>
                            <li class="my-2">No Maximum Limit</li>
                            <li class="my-2">No hidden charges</li>
                            <li class="my-2">No prepayment penalty</li>
                            <li class="my-2">Free accidental insurance coverage up to limit Rs. 5.00 Crores</li>
                           </ul>
                          </div>
                         </div>
                        </div>
                       </div>
                </div>
                <!-- col 2-->
                <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab"
                    tabindex="0">
                    <div class="col-12">
                        <div class="card border-0">
                         <div class="card-body pb-0 pt-0 px-0">
                          <h4 class="tabheadingmand tabseo tab-contet-botom-headin my-3">STAR TOP UP LOAN - ELIGIBILITY</h4>
                          <hr class="selectedtabhr" style="display: block;">
                          <div class="col-md-12 my-3">
                           <h5 class="tab-contet-botom-headin"></h5>
                           <ul class="pl-3 normal-text my-3 List-eligiblity">
                            <li class="my-2">Resident Indian/NRI/PIO are eligible</li>
                            <li class="my-2">Individuals: Salaried/Self-employed/Professionals</li>
                            <li class="my-2">Non-individuals: Group/Association of Individuals, HUF, Corporates</li>
                            <li class="my-2">Trust is not eligible under the scheme</li>
                            <li class="my-2">Age: Minimum 18 years to maximum age 70 years at the time of final repayment</li>
                           </ul>
                          </div>
                         </div>
                        </div>
                       </div>
                </div>
                <!-- col 3-->
                <div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab"
                    tabindex="0">
                    <div class="col-12">
                        <div class="card border-0">
                         <div class="card-body pb-0 pt-0 px-0">
                          <h4 class="tabheadingmand tabseo tab-contet-botom-headin my-3">STAR TOP UP LOAN - INTEREST RATES &amp; CHARGES</h4>
                          <hr class="selectedtabhr" style="display: block;">
                          <div class="col-md-12 my-3">
                           <h3 class="tab-contet-botom-headin"></h3>
                           <ul class="pl-3 normal-text my-3 List-eligiblity">
                            <li class="my-2">ROI starting from 8.40%</li>
                            <li class="my-2">ROI is linked with CIBIL Personal Score (in case of individuals)</li>
                            <li class="my-2">ROI is calculated on daily reducing balance</li>
                           </ul>
                          </div>
                          <div class="col-md-12 my-3">
                           <h5 class="tab-contet-botom-headin">Charges</h5>
                           <ul class="pl-3 normal-text my-3 List-eligiblity">
                            <li class="my-2">PPC For Individuals: One time @0.25% of Loan amount: Min. Rs. 1500/- to Max. Rs. 20000/-</li>
                            <li class="my-2">PPC For Other than individuals: One time @0.50% of Loan amount: Min. Rs. 3000/- to Max. Rs. 40000/-</li>
                           </ul>
                          </div>
                         </div>
                        </div>
                       </div>
                </div>
                <!-- col 4-->
                <div class="tab-pane fade" id="doc-tab-pane" role="tabpanel" aria-labelledby="doc-tab"
                    tabindex="0">
                    <div class="col-12">
                        <div class="card border-0">
                         <div class="card-body pb-0 pt-0 px-0">
                          <h4 class="tabheadingmand tabseo tab-contet-botom-headin my-3">STAR TOP UP LOAN - DOCUMENTS</h4>
                          <hr class="selectedtabhr" style="display: block;">
                          <div class="col-md-12 my-3">
                           <h5 class="tab-contet-botom-headin">For Individuals</h5>
                           <ul class="pl-3 normal-text my-3 List-eligiblity">
                            <li class="my-2">Proof of identity (any one): PAN/Passport/Driver Licence/Voter ID</li>
                            <li class="my-2">Proof of Address (any one): Passport/Driver Licence/Aadhar Card/ Latest Electricity Bill/Latest Telephone Bill/Latest Piped gas bill</li>
                            <li class="my-2">Proof of Income (any one): <br>For salaried: Latest 6 Month Salary/Pay Slip and One year ITR/Form16 <br>For Self-employed: Last 3 years ITR with Computation of Income/Profit &amp; Loss Account/Balance\ Sheet/Capital Account Statement</li>
                           </ul>
                          </div>
                          <div class="col-md-12 my-3">
                           <h5 class="tab-contet-botom-headin">For other than Individuals</h5>
                           <ul class="pl-3 normal-text my-3 List-eligiblity">
                            <li class="my-2">KYC of Partners/Directors</li>
                            <li class="my-2">PAN Card copy of Company/Firm</li>
                            <li class="my-2">Regd. Partnership Deed/MOA/AOA</li>
                            <li class="my-2">Certificate of incorporation as applicable</li>
                            <li class="my-2">Account statement for last 12 months</li>
                            <li class="my-2">Firm’s Audited Financials for last 3 years</li>
                           </ul>
                          </div>
                         </div>
                        </div>
                       </div>
                </div>  
                <div class="col-12">
                    
                      <div class="col-md-12 my-3">
                       <p class="normal-text my-3 text-justify">*Terms &amp; Conditions apply. For further details, Please contact your Nearest Branch</p>
                      </div>
                      <hr class="selectedtabhr">
                     </div>
            </div>
            

            <!---- third ROW-->

            <div class="mb-5">
                <h2 class="big-heading">PRODUCTS YOU MAY LIKE</h2>
                <div class="border-blue"></div>
                
            </div>

            <div class="row">

                    <!--col 1-->
                    <div class="col mb-3">
                        <div class="card userCard" style="width:18rem; height:364.26px;">
                            <img src="https://bankofindia.co.in/documents/20121/24947716/StarDiamondHomeLoan.webp/a2d4ea16-7fba-fb85-e380-24bf536b0c1a?t=1723780899012"
                                class="card-img-top" alt="STAR DIAMOND HOME LOAN">
                            <div class="card-body d-flex justify-content-between flex-column">
                                <h5 class="card-title">STAR DIAMOND HOME LOAN</h5>
                                <p class="card-text">Joy of owning a home without burden</p>
                                <a href="starDiamondHomeLoan.jsp" class="icon-link gap-1 icon-link-hover stretched-link">
                                    Learn More <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                        fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd"
                                            d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8" />
                                    </svg>
                                    <svg class="bi">
                                        <use xlink:href="#chevron-right"></use>
                                    </svg>
                                </a>
                            </div>
                        </div>
                    </div>
                <!--- col 2 -->
                <div class="col mb-3">
                    <div class="card userCard" style="width:18rem;height:364.26px;">
                        <img src="https://bankofindia.co.in/documents/20121/24947716/STARPRAVASIHOMELOAN.webp/f2cacc15-89c4-cf53-8573-5df7831fe71a?t=1723780947813"
                            class="card-img-top" alt="STAR PRAVASI HOME LOAN">
                        <div class="card-body d-flex justify-content-between flex-column">
                            <h5 class="card-title">STAR PRAVASI HOME LOAN</h5>
                            <p class="card-text">Non Resident Indians (NRIs) holding Valid Indian Passport</p>
                            <a href="starPravasiHomeLoan.jsp" class="icon-link gap-1 icon-link-hover stretched-link">
                                Learn More <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                    fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
                                        d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8" />
                                </svg>
                                <svg class="bi">
                                    <use xlink:href="#chevron-right"></use>
                                </svg>
                            </a>
                        </div>
                    </div>
                </div>
                <!--col 3-->
                <div class="col mb-3">
                    <div class="card userCard" style="width:18rem; height:364.26px;">
                        <img src="https://bankofindia.co.in/documents/20121/24947716/STARSMARTHOMELOAN.webp/2d0a6764-56da-a3a9-b081-04fc1731f538?t=1723780920057"
                            class="card-img-top" alt="STAR SMART HOME LOAN">
                        <div class="card-body d-flex justify-content-between flex-column">
                            <h5 class="card-title">STAR SMART HOME LOAN</h5>
                            <p class="card-text">It's a smart move with Star Smart home Loan</p>
                            <a href="starSmartHomeLoan.jsp" class="icon-link gap-1 icon-link-hover stretched-link">
                                Learn More <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                    fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
                                        d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8" />
                                </svg>
                                <svg class="bi">
                                    <use xlink:href="#chevron-right"></use>
                                </svg>
                            </a>
                        </div>
                    </div>
                </div>
                <!---col 4-->
                <div class="col mb-3">
                    <div class="card userCard" style="width:18rem; height:364.26px;">
                        <img src="https://bankofindia.co.in/documents/20121/24947716/STARHOMELOAN.webp/b19308b6-0bab-fe3b-245e-afebb547e1e7?t=1723780877818"
                            class="card-img-top" alt="STAR HOME LOAN">
                        <div class="card-body d-flex justify-content-between flex-column">
                            <h5 class="card-title">STAR HOME LOAN</h5>
                            <p class="card-text">Why rent when you can buy with RSGDSA</p>
                            <a href="starHomeLoan.jsp" class="icon-link gap-1 icon-link-hover stretched-link">
                                Learn More <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                    fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
                                        d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8" />
                                </svg>
                                <svg class="bi">
                                    <use xlink:href="#chevron-right"></use>
                                </svg>
                            </a>
                        </div>
                    </div>
                </div>
            </div><br>






        </div>



        <hr class="featurette-divider ">

        <footer class="container footerChange">
            <p class="float-end"><a href="#">Back to top<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                        fill="currentColor" class="bi bi-arrow-up" viewBox="0 0 16 16">
                        <path fill-rule="evenodd"
                            d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5" />
                    </svg></a></p>
            <p>© 2024–2025 RGSDSA Bank, Inc. · <a href="#">Privacy</a> · <a href="#">Terms</a></p>
        </footer>

        <!--  Script   -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
</body>

</html>