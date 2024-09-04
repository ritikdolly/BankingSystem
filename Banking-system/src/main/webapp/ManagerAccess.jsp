<%@page import="Bank.Model.AddInformation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>manager</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   <style>
        /* General Reset and Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, Helvetica, sans-serif;
        }

        body {
            background-color: #f7f8fa;
            color: #333;
            padding-top: 80px;
        }

        /* Header Title Styling */
        body h2 {
            padding: 10px 0px 10px 100px;
            font-size: 30px;
            background: #fff;
            font-weight: 500;
            opacity: 0.6;
        }

        /* Card Container Styling */
        header {
            display: flex;
            align-items: center;
            justify-content: space-evenly;
            flex-wrap: wrap;
            margin: 150px 5px 20px 5px;
            padding: 0px 70px;
        }

        /* Individual Card Styling */
        body header div {
            width: 400px;
            height: 40vh;
            border: 3px solid #007bff;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
            text-align: center;
            font-size: 25px;
            padding: 1px;
            display: inline-block;
            transition: transform 0.3s ease;
            margin: 20px;
        }

        /* Hover Effect for Cards */
        .staff-info:hover {
            transform: scale(1.1);
        }

        /* Image Styling */
        .img {
            padding-bottom: 50px;
            width: 80%;
            height: 40vh;
        }

        /* Button Text Styling */
        b {
            width: 100%;
            display: block;
            background: #007bff;
            border-radius: 7px 7px 0px 0px;
            padding: 0px;
            color: #fff;
        }

        /* Navbar Styling */
        .nav-bar {
            position: fixed;
            top: 0;
            width: 100%;
            background-color: #007bff;
            padding: 20px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1000;
        }

        .nav-bar .nav-bar-first {
            display: flex;
            align-items: center;
        }

        .nav-bar .nav-bar-first i {
            margin-right: 10px;
            font-size: 25px;
        }

        .nav-bar .nav-bar-second a {
            color: white;
            margin-right: 20px;
            text-decoration: none;
            font-weight: 600;
        }

        .nav-bar .nav-bar-second a i {
            margin-right: 5px;
            font-size: 20px;
        }
        /* userName */
        #username{
            padding-left: 20px;
            font-size: 30px;
        }
    </style>
</head>
<body>
    <div class="nav-bar">
        <div class="nav-bar-first">
            <i class="fa-solid fa-building-columns"></i>
            <span><b>RSGDSA Bank</b></span>
        </div>
        <div class="nav-bar-second">
            <a href=""><i class="fa-regular fa-circle-user"></i></a>
            <a href="loginPage.jsp"><i aria-valuemax="logout" class="fa-solid fa-arrow-right-from-bracket"></i>Logout</a>
        </div>
    </div>
      <% String userName = (String) request.getAttribute("userName"); %>
    <h3 id="username">Hello! <%= userName%></h3><!--  != null ? userName : ""  -->
    <header>
        <a href="#">
            <div class="staff-info">
                <b>STAFF INFORMATION</b>
                <img src="images/stf2.png" class="img" alt="Withdraw Icon">
            </div>
        </a>
        <a href="#">
            <div class="staff-info">
                <b>CUSTOMOR INFORMATION</b>
                <img src="images/staffinfo.png" class="img" alt="Check Balance Icon">
            </div>
        </a>
        <a href="staffRegisterIndex.jsp">
            <div class="staff-info">
                <b>STAFF CREATION</b>
                <img src="images/stf1.png" class="img" alt="Money Transfer Icon">
            </div>
        </a>
    </header>
</body>
</html>