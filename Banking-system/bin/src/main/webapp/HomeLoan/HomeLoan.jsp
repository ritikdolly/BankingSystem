<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Loan</title>
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
        .userContainer{
            margin-top: 30px;
        }

        /*     Footer   */
        .footerChange {
            padding: 30px 0px;
        }

        /* ------Hover-----*/
        .userbox:hover {
            transform: scale(1.05);
            transition: ease 1s;
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
    <!-- ---------------card center    -------------  -->
    <style type="text/css">
        .new-enh-cardicon {
            width: 24px;
            margin: 7px 0px;
        }

        .new-enh-card {
            background: #051e33;
            padding: 10px;
            border-bottom-right-radius: 15px;
            color: #efefef;
        }

        .new-inh-card-heading {
            font-size: 16px;
            font-weight: bold;
            font-family: 'Open Sans';
            margin-top: 5px;
            margin-bottom: 0;
        }

        .new-inh-card-para {
            font-size: 14px;
            margin-bottom: 5px;
        }

        .new-enh-card {
            background: #09355a;
            padding: 24px 12px;
            border-bottom-right-radius: 15px;
            color: #efefef;
            height: 100% !important;
        }

        .new-enh-card img {
            max-height: 30px !important;
        }

        .new-benefits .big-heading-popularProduct {
            text-align: left;
            font: normal normal bold 24px / 32px Montserrat;
            letter-spacing: 0px;
            color: #333333;
            text-transform: uppercase;
            opacity: 1;
        }

        .new-benefits .new-enh-card img {
            max-height: 24px !important;
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
                            <a class="nav-link active" aria-current="page" href="../loginPage.jsp">Home</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                aria-expanded="false">
                                Other
                            </a>
                            <ul class="dropdown-menu custom-dropdown">
                                <li><a class="dropdown-item" href="../PersonalLoan/PersonalLoan.jsp">Personal Loan</a></li>
                                <li><a class="dropdown-item" href="../VehicleLoan/vehicleLoan.jsp">vehicle Loan</a></li>
                            </ul>
                            </li>
                            <li class="nav-item">
		                        <a class="nav-link " href="../calculator.html">Calculator</a>
		                    </li>

                        <li class="nav-item">
                        <a class="nav-link " href="../loginPage.jsp">Log-in</a>
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
              <div class="col-lg-4 order-2  left-text order-sm-2 order-md-2 order-lg-1 pl-0 pl-mob-grid banner-left-text">
               <div class="top-small-banner-heading">
                Know more about
               </div>
               <h1 id="banner-long-title" class="primary-text-color font-weight-bold text-uppercase">Home Loans</h1>
               <p class="mb-lg-5 mb-sm-3 text-justify">A array of attractive products that fulfils your wish of sweet dream home.</p>
              </div>
              <div class="col-lg-8 order-1 order-sm-1 order-md-1 order-lg-2 pr-0 pr-mob-grid"><picture data-fileentryid="24947718">
                <source media="(max-width:300px)" srcset="/o/adaptive-media/image/24947718/Thumbnail-300x300/home-loans.webp?t=1723780756410">
                <source media="(max-width:1000px) and (min-width:300px)" srcset="/o/adaptive-media/image/24947718/Preview-1000x0/home-loans.webp?t=1723780756410">
                <picture data-fileentryid="24947718">
                 <source media="(max-width:300px)" srcset="/o/adaptive-media/image/24947718/Thumbnail-300x300/home-loans.webp?t=1723780756410">
                 <source media="(max-width:1000px) and (min-width:300px)" srcset="/o/adaptive-media/image/24947718/Preview-1000x0/home-loans.webp?t=1723780756410">
                 <img class="img-fluid boder-img product-detail-banner" alt="Home Loans" title="Home Loans" data-fileentryid="24947718" src="https://bankofindia.co.in/documents/20121/24947716/home-loans.webp/420611a2-4fa3-8a96-119c-f48ed41e0997?t=1723780756410">
                </picture>
               </picture>
              </div>
             </div>
            </div>
           </section>




        <!-- center card-->
        <section class="pt-1 pt-md-3 headersection">
            <div class="container">
             <div class="row">
              <div class="col-12 px-0 px-mob-grid">
               <h2 class="heading mt-1 mt-md-0 mb-1">BENEFITS OF HOME LOAN</h2>
               <p>Home loans, at the very minimum, impose interest. We've carefully curated a series of HOME loan products with more benefits to make your life easy.</p>
              </div>
             </div>
            </div>
           </section>

        <div class=" portlet-content-container">
            <div class="portlet-body">
                <div class="" data-fragments-editor-item-id="20132-24930612"
                    data-fragments-editor-item-type="fragments-editor-mapped-item">
                    <div class="journal-content-article " data-analytics-asset-id="24930610"
                        data-analytics-asset-title="personal-loan-new-benefits" data-analytics-asset-type="web-content">
                        <section class="pt-3-xxl new-benefits">
                            <div class="container">
                                <div class="row">
                                    <div class="col-12 px-0 px-mob-grid">
                                        <div class="row">
                                            <div class="col-md-3 col-lg-3 mb-3 mb-md-0">
                                                <div class="new-enh-card text-center">
                                                    <div>
                                                        <picture data-fileentryid="137118">
                                                            <source media="(max-width:36px)"
                                                                srcset="/o/adaptive-media/image/137118/Preview-1000x0/Iconawesome-percentage.png?t=1662115680476">
                                                            <source media="(max-width:36px) and (min-width:36px)"
                                                                srcset="/o/adaptive-media/image/137118/Thumbnail-300x300/Iconawesome-percentage.png?t=1662115680476">
                                                            <picture data-fileentryid="137118">
                                                                <source media="(max-width:36px)"
                                                                    srcset="/o/adaptive-media/image/137118/Preview-1000x0/Iconawesome-percentage.png?t=1662115680476">
                                                                <source media="(max-width:36px) and (min-width:36px)"
                                                                    srcset="/o/adaptive-media/image/137118/Thumbnail-300x300/Iconawesome-percentage.png?t=1662115680476">
                                                                <img alt="Low Interest Rates" data-fileentryid="137118" src="https://bankofindia.co.in/documents/20121/135546/Iconawesome-percentage.png/926cc2f9-0fff-1f4c-b153-15aa7ecd461d?t=1662115680476"
                                                                    class="new-enh-cardicon">
                                                            </picture>
                                                        </picture>
                                                    </div>
                                                    <h3 class="new-inh-card-heading mb-1">Low Interest Rates</h3>
                                                    <p class="new-inh-card-para">Best class rates in the market</p>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-lg-3 mb-3 mb-md-0">
                                                <div class="new-enh-card text-center">
                                                    <div>
                                                        <picture data-fileentryid="137126">
                                                            <source media="(max-width:27px)"
                                                                srcset="/o/adaptive-media/image/137126/Preview-1000x0/Iconawesome-rupee-sign.png?t=1662115680481">
                                                            <source media="(max-width:27px) and (min-width:27px)"
                                                                srcset="/o/adaptive-media/image/137126/Thumbnail-300x300/Iconawesome-rupee-sign.png?t=1662115680481">
                                                            <picture data-fileentryid="137126">
                                                                <source media="(max-width:27px)"
                                                                    srcset="/o/adaptive-media/image/137126/Preview-1000x0/Iconawesome-rupee-sign.png?t=1662115680481">
                                                                <source media="(max-width:27px) and (min-width:27px)"
                                                                    srcset="/o/adaptive-media/image/137126/Thumbnail-300x300/Iconawesome-rupee-sign.png?t=1662115680481">
                                                                <img alt="No Hidden Charges" data-fileentryid="137126" src="https://bankofindia.co.in/documents/20121/135546/Iconawesome-rupee-sign.png/60c05e46-0b47-e550-1c56-76dcaa78697e?t=1662115680481"
                                                                    class="new-enh-cardicon">
                                                            </picture>
                                                        </picture>
                                                    </div>
                                                    <h3 class="new-inh-card-heading mb-1">No Hidden Charges</h3>
                                                    <p class="new-inh-card-para">Trouble Free Loan Closure</p>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-lg-3 mb-3 mb-md-0">
                                                <div class="new-enh-card text-center">
                                                    <div>
                                                        <picture data-fileentryid="137134">
                                                            <source media="(max-width:29px)"
                                                                srcset="/o/adaptive-media/image/137134/Preview-1000x0/Iconionic-md-document.png?t=1662115680485">
                                                            <source media="(max-width:29px) and (min-width:29px)"
                                                                srcset="/o/adaptive-media/image/137134/Thumbnail-300x300/Iconionic-md-document.png?t=1662115680485">
                                                            <picture data-fileentryid="137134">
                                                                <source media="(max-width:29px)"
                                                                    srcset="/o/adaptive-media/image/137134/Preview-1000x0/Iconionic-md-document.png?t=1662115680485">
                                                                <source media="(max-width:29px) and (min-width:29px)"
                                                                    srcset="/o/adaptive-media/image/137134/Thumbnail-300x300/Iconionic-md-document.png?t=1662115680485">
                                                                <img alt="Minimal Documentation" data-fileentryid="137134" src="https://bankofindia.co.in/documents/20121/135546/Iconionic-md-document.png/8158f399-4c2a-d105-a423-a3370ffa1a96?t=1662115680485"
                                                                    class="new-enh-cardicon">
                                                            </picture>
                                                        </picture>
                                                    </div>
                                                    <h3 class="new-inh-card-heading mb-1">Minimal Documentation</h3>
                                                    <p class="new-inh-card-para">Get your loan with less paper work</p>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-lg-3 mb-3 mb-md-0">
                                                <div class="new-enh-card text-center">
                                                    <div>
                                                        <picture data-fileentryid="137110">
                                                            <source media="(max-width:32px)"
                                                                srcset="/o/adaptive-media/image/137110/Preview-1000x0/Iconawesome-hand-pointer.png?t=1662115680472">
                                                            <source media="(max-width:32px) and (min-width:32px)"
                                                                srcset="/o/adaptive-media/image/137110/Thumbnail-300x300/Iconawesome-hand-pointer.png?t=1662115680472">
                                                            <picture data-fileentryid="137110">
                                                                <source media="(max-width:32px)"
                                                                    srcset="/o/adaptive-media/image/137110/Preview-1000x0/Iconawesome-hand-pointer.png?t=1662115680472">
                                                                <source media="(max-width:32px) and (min-width:32px)"
                                                                    srcset="/o/adaptive-media/image/137110/Thumbnail-300x300/Iconawesome-hand-pointer.png?t=1662115680472">
                                                                <img alt="Apply Online" data-fileentryid="137110" src="https://bankofindia.co.in/documents/20121/135546/Iconawesome-hand-pointer.png/df93865b-adf0-f170-a712-14e30caaa425?t=1662115680472"
                                                                    class="new-enh-cardicon">
                                                            </picture>
                                                        </picture>
                                                    </div>
                                                    <h3 class="new-inh-card-heading mb-1">Apply Online</h3>
                                                    <p class="new-inh-card-para">Finish up the process in 15 minutes</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
        <br>


        <!-- Row 1-->
        <div class="row mb-2">
            <div class="col-md-6 userbox">
                <div
                    class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                    <div class="col-auto d-none d-lg-block">
                        <!-- <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg> -->
                        <img src="https://bankofindia.co.in/documents/20121/24947716/STARHOMELOAN.webp/b19308b6-0bab-fe3b-245e-afebb547e1e7?t=1723780877818"
                            width="300" height="250" alt="">
                    </div>
                    <div class="col p-4 d-flex flex-column position-static">
                        <h3 class="mb-0">Star Home Loan</h3>
                        <div class="mb-1 text-body-secondary">Nov 12</div>
                        <p class="card-text mb-auto">Why rent when you can buy with RSGDSA</p>
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
            <div class="col-md-6 userbox">
                <div
                    class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                    <div class="col-auto d-none d-lg-block">
                        <!-- <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg> -->
                        <img src="https://bankofindia.co.in/documents/20121/24947716/StarDiamondHomeLoan.webp/a2d4ea16-7fba-fb85-e380-24bf536b0c1a?t=1723780899012"
                            width="300" height="250" alt="">
                    </div>
                    <div class="col p-4 d-flex flex-column position-static">
                        <h3 class="mb-0">Star Diamond Home Loan</h3>
                        <div class="mb-1 text-body-secondary">Jan 12</div>
                        <p class="card-text mb-auto">Joy of owing a home without burden</p>
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
        </div>
        <!-- Row 2-->
        <div class="row mb-2">
            <div class="col-md-6 userbox">
                <div
                    class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                    <div class="col-auto d-none d-lg-block">
                        <!-- <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg> -->
                        <img src="https://bankofindia.co.in/documents/20121/24947716/STARSMARTHOMELOAN.webp/2d0a6764-56da-a3a9-b081-04fc1731f538?t=1723780920057"
                            width="300" height="250" alt="">
                    </div>
                    <div class="col p-4 d-flex flex-column position-static">
                        <h3 class="mb-0">Star Smart Home Loan</h3>
                        <div class="mb-1 text-body-secondary">Feb 12</div>
                        <p class="card-text mb-auto">It's a smart move with Star Smart Home Loan</p>
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
            <div class="col-md-6 userbox">
                <div
                    class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                    <div class="col-auto d-none d-lg-block">
                        <!-- <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg> -->
                        <img src="https://bankofindia.co.in/documents/20121/24947716/STARPRAVASIHOMELOAN.webp/f2cacc15-89c4-cf53-8573-5df7831fe71a?t=1723780947813"
                            width="300" height="250" alt="">
                    </div>
                    <div class="col p-4 d-flex flex-column position-static">
                        <h3 class="mb-0">Star Pravasi Home Loan</h3>
                        <div class="mb-1 text-body-secondary">Jul 12</div>
                        <p class="card-text mb-auto">Non Resident Indians (NRIs) holding valid Indian Passport</p>
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
        </div>
    </div>

    <!---------Footer--------------->
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