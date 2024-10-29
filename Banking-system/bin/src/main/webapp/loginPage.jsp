<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page | RGSDSA</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
  <!-- Card Style----->
  <style>
    .User-card {
      width: 15rem;
      height: 15rem;
      box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;
      border-radius: 5px;
      padding: 0;
    }
    .User-card img{
      border-radius: 50%;
    }

    .User-card:hover {
      cursor: pointer;
      transform: scale(1.1);
      transition: ease 1s;
    }

    /*     Footer   */
    .footerChange {
      padding: 30px 0px;
  }
  </style>
</head>

<body>
  <!-- nav Bar -->
  <div class="nav bg-primary ">
    <header class="d-flex flex-wrap  justify-content-between py-2  px-5 " style="width: 100%;">
      <a href="index.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-bank text-light"
          viewBox="0 0 16 16">
          <path
            d="m8 0 6.61 3h.89a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H15v7a.5.5 0 0 1 .485.38l.5 2a.498.498 0 0 1-.485.62H.5a.498.498 0 0 1-.485-.62l.5-2A.5.5 0 0 1 1 13V6H.5a.5.5 0 0 1-.5-.5v-2A.5.5 0 0 1 .5 3h.89zM3.777 3h8.447L8 1zM2 6v7h1V6zm2 0v7h2.5V6zm3.5 0v7h1V6zm2 0v7H12V6zM13 6v7h1V6zm2-1V4H1v1zm-.39 9H1.39l-.25 1h13.72z" />
        </svg>
        <span style="padding-left: 7px;" class="fs-4 text-light">RGSDSA</span>
      </a>

      <ul class="nav nav-pills ">
        <li class="nav-item "><a href="#" class="nav-link text-secondary active" aria-current="page">Home</a></li>
        <li class="nav-item "><a href="#" class="nav-link text-light">Features</a></li>
        <li class="nav-item "><a href="#" class="nav-link text-light">Pricing</a></li>
        <li class="nav-item "><a href="#" class="nav-link text-light">FAQs</a></li>
        <li class="nav-item "><a href="#" class="nav-link text-light">About</a></li>
      </ul>
    </header>
  </div>
  <!-- container-->
  <div class="container">
    <div class="row align-items-center g-lg-5 pb-4 mb-5 " >
      <div class="col-lg-7 pt-5 text-center text-lg-start" style="min-height: 100%;">
        <div
          style="width:1210px; box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -3px 0px inset;"
          class="bg-primary p-2 mb-3 d-flex justify-content-start">
          <h1 class="display-4 fw-bold lh-1 text-body-emphasis mb-3">RGSDSA BANK</h1>
        </div>
        <!------- description ----->
        <p class="col-lg-10 p-2 fs-4 bg-secondary" style="width: 100%; min-height:53vh">Below is an example form built
          entirely with Bootstrap’s form controls. Each required
          form group has a validation state that can be triggered by attempting to submit the form without completing
          it.</p>
      </div>
      <div class="col-md-10 mx-auto col-lg-5">
        <form class="p-4 p-md-4  d-flex flex-column justify-content-around" action="loginPage" method="post"
          style="height: 500px; width:400px; background-color:#d3d5d7; box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;">
          <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" style="width: 100%;"
            class="bi bi-person-square mb-2" viewBox="0 0 16 16">
            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0" />
            <path fill-rule="evenodd"
              d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1" />
          </svg>
          <div class="form-floating">
            <input type="text" name="userId" class="form-control" id="floatingInput" placeholder="Enter userID"
              fdprocessedid="2kelip">
            <label for="floatingInput">User Id</label>
          </div>
          <div class="form-floating ">
            <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password"
              fdprocessedid="c9lw1r">
            <label for="floatingPassword">Password</label>
          </div>
          <label class="d-flex flex-wrap align-items-center  justify-content-between">
            <div class="form-floating mb-2" style="width: 42%;">
              <input type="text" readonly disabled name="inCaptch" class="form-control" id="floatingInput" value="<%= session.getAttribute("captcha") %>" placeholder="Input Captcha"
                fdprocessedid="2kelip">
               <label for="floatingInput">Captcha</label>
                
            </div>
            <a href="loginPage.jsp" class=" icon-link "
              style="--bs-link-hover-color-rgb: 25, 135, 0; font-size:20px; font-weight:700">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor"
                class="bi bi-arrow-clockwise" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M8 3a5 5 0 1 0 4.546 2.914.5.5 0 0 1 .908-.417A6 6 0 1 1 8 2z" />
                <path
                  d="M8 4.466V.534a.25.25 0 0 1 .41-.192l2.36 1.966c.12.1.12.284 0 .384L8.41 4.658A.25.25 0 0 1 8 4.466" />
              </svg>
            </a>
            <div class="form-floating " style="width: 42%;">
              <input type="text" name="outCaptch"  class="form-control" id="floatingInput" placeholder="User Input Captcha">
              <label for="floatingInput">Captcha</label>
            </div>
          </label>
          <button class="w-100 btn btn-lg btn-primary" type="submit" fdprocessedid="bmfw5">Login</button>
          <!-- <p class="error-message" id="errorMsg">Invalid Captcha, please Fill Correctly...</p>-->
        <%
        String msg= (String) request.getAttribute("msg");
        if(msg != null){
      %>
          <h5 style="width: 100%; color:red; font-weight:600" class="text-center"><%out.print(msg);%></h5>
          <%} %>
      </div>
      </form>
    </div>
    <hr class="my-4 ">

    <!-----   second Row ----->

    <div class="row row-cols-1 pb-2">
      <h1 class="mb-4">Loan- Details</h1>
      
      <div class="container mx-5 d-flex justify-content-start">
        <!---- col1 home loan-->
        <a href="HomeLoan/HomeLoan.jsp" style="text-decoration: none; color:black;">
        <div class="User-card d-flex justify-content-center flex-column align-items-center m-2 me-5 mb-4">
          <img
            src="data:image/jpeg;base64,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"
            alt="home loan" width="150" height="150">
          <h5>Home Loan</h5>
        </div>
        </a>
        <!-- col 2 personal loan -->
        <a href="PersonalLoan/PersonalLoan.jsp" style="text-decoration: none; color:black;">
        <div class="User-card d-flex justify-content-center flex-column align-items-center m-2 me-5 mb-4">
          <img
            src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEdz4Jd6TVNWipuLV_E1F9sMIBPHil1LGZTg&s"
            alt="home loan" width="150" height="150">
          <h5>Personal Loan</h5>
        </div>
        </a>
      <!-- col 3 vehicle loan -->
      <a href="VehicleLoan/vehicleLoan.jsp" style="text-decoration: none; color:black;">
        <div class="User-card d-flex justify-content-center flex-column align-items-center m-2 me-5 mb-4">
          <img
            src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd6cqWbQkq_oUAikujhe0Xi8dSFVLRSCeLkw&s"
            alt="home loan" width="150" height="150">
          <h5>Vehicle Loan</h5>
        </div>
      </a>
    </div>
    </div>
  </div>

  <!-- footer-->
  <hr class="featurette-divider ">

  <footer class="container footerChange">
      <p class="float-end"><a href="#">Back to top<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                  fill="currentColor" class="bi bi-arrow-up" viewBox="0 0 16 16">
                  <path fill-rule="evenodd"
                      d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5" />
              </svg></a></p>
      <p>© 2024–2025 RGSDSA Bank, Inc. · <a href="#">Privacy</a> · <a href="#">Terms</a></p>
  </footer>

</body>

</html>