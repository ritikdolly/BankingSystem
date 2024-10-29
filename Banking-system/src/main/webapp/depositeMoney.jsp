<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Staff Access</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f4f6;
            margin: 0;
            padding-top: 60px;
            /* Adjust for fixed navbar */
            padding-bottom: 60px;
            /* Adjust for footer */
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 20px 30px;
            width: 300px;
            text-align: center;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .message {
            margin-top: 10px;
            font-size: 14px;
        }

        .error {
            color: red;
        }

        .success {
            color: green;
        }

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

        footer {
            position: fixed;
            bottom: 0;
        }

        .footerChange {
            width: 1000%;
        }

        #more {
            display: none;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-dark bg-primary fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp"> <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                    fill="currentColor" class="bi bi-bank" viewBox="0 0 16 16">
                    <path
                        d="m8 0 6.61 3h.89a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H15v7a.5.5 0 0 1 .485.38l.5 2a.498.498 0 0 1-.485.62H.5a.498.498 0 0 1-.485-.62l.5-2A.5.5 0 0 1 1 13V6H.5a.5.5 0 0 1-.5-.5v-2A.5.5 0 0 1 .5 3h.89zM3.777 3h8.447L8 1zM2 6v7h1V6zm2 0v7h2.5V6zm3.5 0v7h1V6zm2 0v7H12V6zM13 6v7h1V6zm2-1V4H1v1zm-.39 9H1.39l-.25 1h13.72z" />
                </svg> RGSDSA
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end bg-primary userside-bar text-white" tabindex="-1"
                id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                <div class="offcanvas-header ">
                    <h5 class="offcanvas-title " id="offcanvasDarkNavbarLabel">
                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor"
                            class="bi bi-bank" viewBox="0 0 16 16">
                            <path
                                d="m8 0 6.61 3h.89a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H15v7a.5.5 0 0 1 .485.38l.5 2a.498.498 0 0 1-.485.62H.5a.498.498 0 0 1-.485-.62l.5-2A.5.5 0 0 1 1 13V6H.5a.5.5 0 0 1-.5-.5v-2A.5.5 0 0 1 .5 3h.89zM3.777 3h8.447L8 1zM2 6v7h1V6zm2 0v7h2.5V6zm3.5 0v7h1V6zm2 0v7H12V6zM13 6v7h1V6zm2-1V4H1v1zm-.39 9H1.39l-.25 1h13.72z" />
                        </svg>
                        RGSDSA
                    </h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"
                        aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#">Home</a></li>

                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false"> Other </a>
                            <ul class="dropdown-menu custom-dropdown">
                                <li><a class="dropdown-item"
                                        href="<%=request.getContextPath()%>/customerModify?action=all">Customer
                                        Information</a></li>
                                <li><a class="dropdown-item" href="#">Customer Creation</a></li>
                            </ul>
                        </li>

                        <li class="nav-item"></li>
                        <a class="nav-link " href="index.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                height="16" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
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
        <h2>Deposit Money</h2>
        <form action="customerModify" method="get">
            <input type="hidden" name="action" value="deposit" />
            <label for="custId">Customer ID:</label>
            <input type="text" id="custId" name="custId" required />
            <label for="amount">Amount:</label>
            <input type="number" id="amount" name="amount" step="0.01" required />
            <input type="submit" value="Deposit" />
        </form>
        <div class="message">
            <c:if test="${not empty error}">
                <p class="error">${error}</p>
            </c:if>
            <c:if test="${not empty success}">
                <p class="success">${success}</p>
            </c:if>
        </div>
    </div><br>

    <hr class="featurette-divider ">

    <footer class="container footerChange">
        <p>
            © 2024–2025 RGSDSA Bank, Inc. · <a href="#">Privacy</a> · <a href="#">Terms</a>
        </p>
    </footer>

    <!--  Script   -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>