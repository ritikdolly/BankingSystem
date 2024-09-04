<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Access</title>
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
            width: 100%;
            height: 100vh;
            background: url(images/bluewave.jpg) no-repeat center/cover;
            backdrop-filter: blur(20px);
        }

        /* Header Title Styling */
        body h2 {
            padding: 10px 0px 10px 100px;
            font-size: 30px;
            background: #1a0251;
            font-weight: 500;
            opacity: 0.6;
        }

        /* Card Container Styling */
        header {
            display: flex;
            align-items: center;
            justify-content: space-evenly;
            flex-wrap: wrap;
            margin: 20px 100px 0 100px;
            padding: 0px 100px;
        }

        /* Individual Card Styling */
        body header div {
            width: 350px;
            height: 35vh;
            border: 5px solid rgb(247, 250, 251);
            border-radius: 15px;
            text-align: center;
            font-size: 25px;
            padding: 5px;
            display: inline-block;
            transition: transform 0.3s ease;
            margin: 20px;
        }

        /* Hover Effect for Cards */
        div:hover {
            transform: scale(1.1);
        }

        /* Image Styling */
        .img {
            width: 100%;
            height: 30vh;
        }

        /* Button Text Styling */
        b {
            width: 100%;
            display: block;
            background: #23027c;
            border-radius: 10px;
            padding: 2px;
        }

        /* Section Backgrounds */
        .staff-info, .customer-info, .staff-creation {
            background-color: transparent;
            flex-shrink: 1;
        }
    </style>
</head>
<body>
    <!-- Header Title -->
    <h2>Hello! Debasis</h2>

    <!-- Card Links -->
    <header>
        <a href="#">
            <div class="staff-info">
                <b>DEPOSIT</b>
                <img src="images/deposit-removebg-preview.png" class="img" alt="Deposit Icon">
            </div>
        </a>
        <a href="#">
            <div class="staff-info">
                <b>WITHDRAW</b>
                <img src="images/withdraw1-removebg-preview (1).png" class="img" alt="Withdraw Icon">
            </div>
        </a>
        <a href="#">
            <div class="staff-info">
                <b>CHECK BALANCE</b>
                <img src="images/bal1-removebg-preview (1).png" class="img" alt="Check Balance Icon">
            </div>
        </a>
        <a href="#">
            <div class="staff-info">
                <b>MONEY TRANSFER</b>
                <img src="images/transfer1-removebg-preview.png" class="img" alt="Money Transfer Icon">
            </div>
        </a>
    </header>
</body>
</html>
