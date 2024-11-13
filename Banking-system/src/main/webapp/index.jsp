<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Front Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            overflow-y: hidden;
            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }

        body {
            margin: 0;
        }

        .back {
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(57deg, #0a49d1 70%, #fff 30%);
        }

        .nav {
            position: fixed;
            margin: 20px 30px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            min-width: 96%;
            
        }

        .nav .logo {
            display: flex;
            align-items: center;
            justify-content: space-between;
            width: 200px;
            font-size: 20px;
            color: white;
            background-color:  rgb(10, 111, 227);
            padding: 0px 10px;
            border: 1px solid white;
            border-radius: 5px;
            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }

        .marg-5 {
            width: 500px;
            display: flex;
            justify-content: space-between;
        }

        a {
            font-size: 15px;
            font-weight: 650;
            color: rgb(31, 122, 227);
            border: 1px solid;
            padding: 2px;
            width: 5rem;
            text-align: center;
            background-color: #ffffff;
            position: relative;
            border-top-right-radius: 10px;
            border-bottom-left-radius: 10px;
        }

        a:last-child {
            color: rgb(255, 255, 255);
            background-color: rgb(31, 122, 227);
        }

        a:hover::after {
            content: attr(data-tooltip);
            position: absolute;
            top: -30px;
            left: 0;
            background-color: #333;
            color: #fff;
            padding: 5px;
            border-radius: 5px;
            font-size: 12px;
            white-space: nowrap;
        }

        .log_page {
            margin-right: 50px;
            height: 300px;
            width: 1000px;
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            flex-direction: column;
            color: aliceblue;
        }

        

        .log_page span {
            padding: 10px;
            font-size: 120px;
            box-shadow: 10px 4px 5px #c5cde1;
            text-shadow: 5px 3px 2px #989a9d;
            transition: transform 0.3s ease;
            
        }

        .log_page span:hover {
            transform: scale(1.05);
        }

        .log_page fieldset {
            padding-bottom: 10px;
        }

        .log_page fieldset legend {
            margin-left: 25px;
            box-shadow: rgba(0, 0, 0, 0.15) 2.4px 2.4px 3.2px;
        }

        .date-time {
            position: fixed;
            bottom: 20px;
            right: 20px;
            color: #fff;
            background-color: rgba(0, 0, 0, 0.7);
            padding: 10px;
            border-radius: 8px;
            font-size: 14px;
        }

        /* Modal for Contact */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .modal-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 400px;
            border-radius: 8px;
        }

        .modal-close {
            float: right;
            color: #aaa;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }

        .modal-close:hover {
            color: black;
        }
    </style>
</head>

<body>
    <div class="nav">
        <div class="logo">
            <i class="fa-solid fa-building-columns"></i> 
            <h3>RSGDSA BANK</h3>
        </div>
        <div class="marg-5">
            <a href="privacy.html" data-tooltip="Go to Home Page">.policy</a>
            <a href="term.html" data-tooltip="Learn About Us">.Terms</a>
            <a href="#contactModal" data-tooltip="Contact Us" onclick="openModal()">.Contact</a>
            <a href="loginPage.jsp" data-tooltip="Learn About Us">.Login</a>
        </div>
    </div>
   

    <div class="back">
        <div class="log_page">
            <fieldset>
                <span>RSGDSA BANK</span>
                <legend>SINCE 1999</legend>
            </fieldset>
        </div>
    </div>

    <!-- Dynamic Date-Time Display -->
    <div class="date-time" id="dateTimeDisplay"></div>

    <!-- Contact Modal -->
    <div id="contactModal" class="modal">
        <div class="modal-content">
            <span class="modal-close" onclick="closeModal()">&times;</span>
            <h3>Contact Us</h3>
            <p><b>Email</b>: support@rsgdsabank.com</p>
            <p><b>Phone</b> +919798904589, +91620215760 , +917978677431</p>
            <p><b>Address</b>: Centurion Universty Technology and Managment, odisha, 752050</p>
        </div>
    </div>

    <script>
        // Display Date and Time
        function updateTime() {
            const now = new Date();
            const dateTimeDisplay = document.getElementById('dateTimeDisplay');
            dateTimeDisplay.innerHTML = now.toLocaleDateString() + " " + now.toLocaleTimeString();
        }
        setInterval(updateTime, 1000);

        // Modal Control Functions
        function openModal() {
            document.getElementById("contactModal").style.display = "block";
        }

        function closeModal() {
            document.getElementById("contactModal").style.display = "none";
        }

        // Close Modal on Outside Click
        window.onclick = function (event) {
            const modal = document.getElementById("contactModal");
            if (event.target === modal) {
                modal.style.display = "none";
            }
        }
    </script>
</body>

</html>