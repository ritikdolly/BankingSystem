<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Balance</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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


    /*     Footer   */
    .footerChange {
      padding: 30px 0px;
    }
    /* hover Code*/
    .featurette:hover{
      transform: scale(1.05);
      transition: ease 1s;
    }

    /* -----dropdown ---*/
    .custom-dropdown {
      background-color: white !important;
    }

    .custom-dropdown .dropdown-item {
      color: black !important;
    }


  

        /* Container Styling */
        .container {
            margin-top: 200px;
            margin-bottom: 100px;
            width: 650px;
            padding: 30px;
            background-color: white;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            
            }

        .title {
            font-size: 24px;
            font-weight: 600;
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }



        



        .buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .buttons input, .buttons button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            font-weight: 600;
        }

        .buttons input[type="reset"] {
            background-color: #ccc;
            color: #333;
        }

        .buttons input[type="button"] {
            background-color: #007bff;
            color: white;
        }

</style>

</head>
<body>
    <nav class="navbar navbar-dark bg-primary fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">
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
                    <li><a class="dropdown-item" href="#">Staff Information</a></li>
                    <li><a class="dropdown-item" href="#">Customer Information</a></li>
                    <li><a class="dropdown-item" href="#">Staff Creation</a></li>
                  </ul>
                </li>
    
                <li class="nav-item"></li>
                <a class="nav-link " href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
                  <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0z"/>
                  <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708z"/>
                </svg> Logout</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </nav>
    

      

    <div class="container">

        <div class="title">Check Your Balance</div>
        <!-- Content here -->
        <form>
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="email" class="form-control" id="name" name="name" aria-describedby="emailHelp">
              </div>
              <div class="mb-3">
                <label for="name" class="form-label">Account Number</label>
                <input type="email" class="form-control" id="name" name="name" aria-describedby="emailHelp">
              </div>
            
       
            <button type="button" class="btn btn-primary " data-bs-toggle="modal" data-bs-target="#exampleModal">
                Check
              </button>
              
          </form>
          
      </div>
      






<!-- Button trigger modal -->

  
  <!-- Modal -->
   
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">Your Balance is</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          1000000000
        </div>
        <div class="modal-footer">          
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Submit</button>
        </div>
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

</body>
</html>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
crossorigin="anonymous"></script>
<script>
    const startBtn = document.querySelector('.click');
    const popupInfo = document.querySelector('.popup_box');

    startBtn.addEventListener('click', function() {
        popupInfo.style.display = 'block';
    });

    document.querySelector('.btn1 button').addEventListener('click', function() {
        popupInfo.style.display = 'none';
    });


    
</script>