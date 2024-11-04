<%@page import="Bank.Model.AddInformation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Manager Access</title>
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

    /*  -----Container-----  */
    .featurette {
      margin: 30px 0px;   
      padding: 10px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    /*     Footer   */
    .footerChange {
      padding: 30px 0px;
    }
    /* hover Code*/
    .featurette:hover{
      transform: scale(1.05);
      transition: ease 1s;
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
      <a class="navbar-brand" href="index.jsp">
        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-bank"
          viewBox="0 0 16 16">
          <path
            d="m8 0 6.61 3h.89a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H15v7a.5.5 0 0 1 .485.38l.5 2a.498.498 0 0 1-.485.62H.5a.498.498 0 0 1-.485-.62l.5-2A.5.5 0 0 1 1 13V6H.5a.5.5 0 0 1-.5-.5v-2A.5.5 0 0 1 .5 3h.89zM3.777 3h8.447L8 1zM2 6v7h1V6zm2 0v7h2.5V6zm3.5 0v7h1V6zm2 0v7H12V6zM13 6v7h1V6zm2-1V4H1v1zm-.39 9H1.39l-.25 1h13.72z" />
        </svg> RGSDSA</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar"
        aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="offcanvas offcanvas-end bg-primary userside-bar text-white" tabindex="-1" id="offcanvasDarkNavbar"
        aria-labelledby="offcanvasDarkNavbarLabel">
        <div class="offcanvas-header ">
          <h5 class="offcanvas-title " id="offcanvasDarkNavbarLabel"><svg xmlns="http://www.w3.org/2000/svg" width="25"
              height="25" fill="currentColor" class="bi bi-bank" viewBox="0 0 16 16">
              <path
                d="m8 0 6.61 3h.89a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H15v7a.5.5 0 0 1 .485.38l.5 2a.498.498 0 0 1-.485.62H.5a.498.498 0 0 1-.485-.62l.5-2A.5.5 0 0 1 1 13V6H.5a.5.5 0 0 1-.5-.5v-2A.5.5 0 0 1 .5 3h.89zM3.777 3h8.447L8 1zM2 6v7h1V6zm2 0v7h2.5V6zm3.5 0v7h1V6zm2 0v7H12V6zM13 6v7h1V6zm2-1V4H1v1zm-.39 9H1.39l-.25 1h13.72z" />
            </svg> RGSDSA</h5>
          <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"
            aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
          <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>

            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                aria-expanded="false">
                Other
              </a>
              <ul class="dropdown-menu custom-dropdown">
<<<<<<< HEAD
                <li><a class="dropdown-item" href="<%= request.getContextPath()%>/staffModify?action=all&mainUser=${mainUser}">Staff Information</a></li>
                <li><a class="dropdown-item" href="#">Customer Information</a></li>
                <li><a class="dropdown-item" href="<%= request.getContextPath()%>/staffModify?action=createStaff&mainUser=${mainUser}">Staff Creation</a></li>
=======
                <li><a class="dropdown-item" href="<%= request.getContextPath()%>/staffModify?action=all">Staff Information</a></li>
                <li><a class="dropdown-item" href="<%=request.getContextPath()%>/customerModify?action=all">Customer Information</a></li>
                <li><a class="dropdown-item" href="staffRegisterIndex.jsp">Staff Creation</a></li>
>>>>>>> branch 'Sahdev' of https://github.com/ritikdolly/BankingSystem.git
              </ul>
            </li>
            <li class="nav-item">
                        <a class="nav-link " href="calculator.html">Calculator</a>
             </li>
             <li class="nav-item">
                        <a class="nav-link " href="<%= request.getContextPath()%>/staffModify?action=mainUserDetail&mainUser=${mainUser}">Your detail</a>
             </li>
             

            <li class="nav-item">
            <a class="nav-link " href="loginPage.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
              <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0z"/>
              <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708z"/>
            </svg> Logout</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>

  <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="10000">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
        aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
        aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
        aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img
          src="https://www.chase.com/content/services/rendition/image.large.png/unified-assets/photography/articles/primary/banking/seo_traditional_vs_online_banking_07222022.png"
          height="700"class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block opacity-75 bg-dark">
          <h5 class="fs-1">Staff Creation</h5>
          <p class="fs-4">Some representative placeholder content for the first slide.</p>
          <a class="btn btn-primary" href="<%= request.getContextPath()%>/staffModify?action=createStaff&mainUser=${mainUser}"  role="button">Employee Creation</a>
        </div>
      </div>
      <div class="carousel-item">
        <img
          src="https://media.istockphoto.com/id/1927881398/photo/group-of-business-persons-talking-in-the-office.jpg?s=2048x2048&w=is&k=20&c=R-BpbX_SzMA3IvcNN4L789w8XDx7hum4QESOv538Pw8="
          height="700" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block opacity-75 bg-dark">
          <h5 class="fs-1">Staff Information</h5>
          <p class="fs-4">Some representative placeholder content for the second slide.</p>
          <a class="btn btn-primary" href="<%= request.getContextPath()%>/staffModify?action=all&mainUser=${mainUser}"  role="button">Employees Informations</a>
        </div>
      </div>
      <div class="carousel-item">
        <img
          src="https://media.istockphoto.com/id/1134396219/photo/young-woman-talking-to-loan-officer.jpg?s=2048x2048&w=is&k=20&c=ibdYCPJYuNS2bqDJAxkEVXdzVXU_ilU9qyc7zD8TDfs="
          height="700"class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block opacity-75 bg-dark">
          <h5 class="fs-1">Customers Informations</h5>
          <p class="fs-4">Some representative placeholder content for the third slide.</p>
          <a class="btn btn-primary" href="<%=request.getContextPath()%>/customerModify?action=all" role="button">Customer Details</a>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
</div>

 
  <div class="container align-middle ">
     <!-- First Box for Emp Create -->
    <div class="row featurette rounded-bottom-1 bg-body-secondary">
      <div class="col-md-7">
        <h2 class="featurette-heading fw-normal lh-1">Employees Creation<span class="text-body-secondary">It’ll
            blow your mind.</span></h2>
        <p class="lead">Some great placeholder content for the first featurette here. Imagine some exciting prose here.
        </p>
        <a class="btn btn-primary" href="<%= request.getContextPath()%>/staffModify?action=createStaff&mainUser=${mainUser}"  role="button">Employee Creation <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8"/>
          </svg></a>
      </div>
      <div class="col-md-5">
        <img
          src="https://media.gettyimages.com/id/1329317954/photo/asian-chinese-white-collar-worker-having-cheerful-business-discussion-in-boardroom-business.jpg?s=612x612&w=0&k=20&c=ffwIth6c8Z5JIF2sRsZFEP3TExJ3NG41QLnp3qDNNCQ="
          height="400" width="500" alt="emp-create">
      </div>
    </div>
    <!--   Second Box for  Emp Information    -->
    <div class="row featurette rounded-bottom-1 bg-body-secondary">
      <div class="col-md-6 order-md-2">
        <h2 class="featurette-heading fw-normal lh-1">Employees Information<span class="text-body-secondary">See for
            yourself.</span></h2>
        <p class="lead">Another featurette? Of course. More placeholder content here to give you an idea of how this
          layout would work with some actual real-world content in place.</p>
          <a class="btn btn-primary" href="<%= request.getContextPath()%>/staffModify?action=all&mainUser=${mainUser}"  role="button"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8"/>
          </svg> Employees Details</a>
      </div>
      <div class="col-md-5 order-md-1">
        <img
          src="https://media.gettyimages.com/id/2156838176/photo/team-discussing-strategy-in-office-meeting.jpg?s=612x612&w=0&k=20&c=DLCYaHBimz1OPKMFZIjebFxaLnIQkNzgqZ3yhh1eaxw="
          height="400" width="500" alt="">
      </div>
    </div>
    <!--   Third Box for customer Details...-->
    <div class="row featurette rounded-bottom-1 bg-body-secondary">
      <div class="col-md-7">
        <h2 class="featurette-heading fw-normal lh-1">Customer Details<span class="text-body-secondary">It’ll
            blow your mind.</span></h2>
        <p class="lead">Some great placeholder content for the first featurette here. Imagine some exciting prose here.
        </p>
        <a class="btn btn-primary" href="<%=request.getContextPath()%>/customerModify?action=all" role="button">Customer Detail <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8"/>
          </svg></a>
      </div>
      <div class="col-md-5">
        <img
          src="https://media.gettyimages.com/id/1282395437/photo/sign-here.jpg?s=612x612&w=0&k=20&c=9Rclnox25e6f-WDM4KE_SxgL1y_28QzHRnwi0maVXB8="
          height="400" width="500" alt="cust-info">
      </div>
    </div>
  </div>

  <hr class="featurette-divider ">

  <footer class="container footerChange">
    <p class="float-end"><a href="#">Back to top<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-up" viewBox="0 0 16 16">
      <path fill-rule="evenodd" d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5"/>
    </svg></a></p>
    <p>© 2024–2025 RGSDSA Bank, Inc. · <a href="#">Privacy</a> · <a href="#">Terms</a></p>
  </footer>

  <!--  Script   -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
  <script>
    var myCarousel = document.querySelector('#carouselExampleCaptions');
    var carousel = new bootstrap.Carousel(myCarousel, {
      interval: 5000,  // 10 seconds
      ride: 'carousel'
    });


  </script>
</body>

</html>