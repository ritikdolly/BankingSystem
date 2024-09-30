<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Access</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* General Reset and Styling */
        * {
            margin: 0;
            padding: 0;
            color: #fff;
            font-family: Arial, Helvetica, sans-serif;
        }

        /* Body Styling */
        body {
            max-width: 100%;
            height: 100vh;
            overflow: hidden;
            background: #fff;
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
            max-width: 100%;
            height: 95vh;
            display: flex;
            align-items: center;
            justify-content: space-evenly;
            flex-wrap: wrap;
            margin: 20px 10px 0 100px;
            padding: 0px 100px;
        }

        /* Individual Card Styling */
        body header div {
            width: 350px;
            height: 35vh;
            border: 3px solid #007bff;
            border-radius:10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
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
            padding-top: 10px;
            
            width: 60%;
            height: 28vh;
        }

        /* Button Text Styling */
        b {
            width: 100%;
            display: block;
            background: #007bff;
            border-radius:7px 7px 0px 0px;
            padding: 0px;
        }

        /* Section Backgrounds */
        .staff-info, .customer-info, .staff-creation {
            background-color: transparent;
            flex-shrink: 1;
        }
            .nav-bar{
                width: 100%;
                height: 20px;
                background-color: #007bff;
                padding: 20px;
                color: aliceblue;
                display: flex;
                justify-content: space-between;
                align-items: center;
                font-size: 20px;
                font-weight:600;
            }
            .nav-bar .nav-bar-first span:first-child{
                padding: 0px 80px 0px 50px;
            }
            .nav-bar .nav-bar-second a{
                margin-right: 40px;
                color: #fff;
                font-weight:600;
                text-decoration: none;
            } 
            .nav-bar .nav-bar-second a i{
                padding-right:5px ;
            }
        
    </style>

</head>
<body>
    <div class="nav-bar">
        <div class="nav-bar-first">
            <i class="fa-solid fa-bars"></i>
            <span>RSGDSA Bank</span>
        </div>
        <div class="nav-bar-second">
            <a href=""><i class="fa-regular fa-circle-user"></i></a>
            <a href=""><i aria-valuemax="logout" class="fa-solid fa-arrow-right-from-bracket"></i>Logout</a>
        </div>
    </div>
   
    <header>
        
        <a href="#">
            <div class="staff-info">
                <b>WITHDRAW</b>
                <img src="withdraw.png" class="img" alt="Withdraw Icon">
            </div>
        </a>
        <a href="#">
            <div class="staff-info">
                <b>CHECK BALANCE</b>
                <img src="balance.png" class="img" alt="Check Balance Icon">
            </div>
        </a>
        <a href="#">
            <div class="staff-info">
                <b>MONEY TRANSFER</b>
                <img src="transfer.png" class="img" alt="Money Transfer Icon">
            </div>
        </a>
    </header>
</body>
</html>
    