<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 15px;
        }

        body {
            width: 100%;
            height: 100vh;
            background: url(https://static.vecteezy.com/ti/gratis-vektor/p3/10518833-digital-finans-och-bankinvesteringstjanst-pa-mikrochip-med-molnberakningar-i-futuristisk-bakgrund-bankbyggnad-med-online-betalning-sakra-pengar-och-finansiell-innovationsteknik-vector.jpg) no-repeat center center/cover;
            display: flex;
            justify-content: flex-start;
            align-items: center;
        }

        .loginPage_div {
            width: 300px;
            height: 450px;
            background: transparent;
            display: flex;
            background-color: #0e1b63;
            opacity: 0.7;
            justify-content: space-around;
            align-items: center;
            flex-direction: column;
            margin-left: 150px;
            border-radius: 10px;
            padding: 20px;
            border: 5px solid #fff;
        }

        .loginPage_div i {
            color: aliceblue;
            font-size: 100px;
        }

        .loginPage_div form {
            width: 100%;
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            flex-direction: column;
        }

        .loginPage_div form input {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            color: #fff;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: transparent;
            box-sizing: border-box;
        }

        .loginPage_div form input::placeholder {
            color: #9a9797;
        }

        .loginPage_div form .captcha {
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .loginPage_div form .captcha #RefreshButton {
            font-size: 15px;
        }

        .loginPage_div form .captcha #RefreshButton:hover {
            cursor: pointer;
        }

        .loginPage_div form .captcha input {
            width: 130px;
        }

        .loginPage_div form input[type=submit] {
            background-color: rgb(27, 102, 214);
            width: 100%;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 20px;
        }

        /*----  hover ----  */
        .loginPage_div form input[type=submit]:hover {
            background-color: #53a2fd;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
            display: none;
        }
        h5{
       		color: red;
            font-size: 14px;
        }
    </style>
</head>

<body>
    <div class="loginPage_div">
        <i class="fa-regular fa-circle-user" id="User_logo"></i>
        <form action="loginPage" method="post">
            <input type="text" name="userId" placeholder="Enter User ID" /><br>
            <input type="password" name="password" placeholder="Enter Password"><br>
            <span class="captcha">
            	<input type="text" id="incap" disabled name="inCaptch" value="<%= session.getAttribute("captcha") %>" />
                <a href="loginPage.jsp"><i id="RefreshButton" class="fa-solid fa-arrows-rotate"></i></a>
                <input type="text" id="outcap" name="outCaptch" placeholder="Captcha" />
            </span>
            <input type="submit" id="submitBtn" name="login" value="Login" />
        </form>
        
        <!-- <p class="error-message" id="errorMsg">Invalid Captcha, please Fill Correctly...</p>-->
        <%
            String msg= (String) request.getAttribute("msg");
            if(msg != null){
        %><h5><%out.print(msg);%></h5>
        <%} %>
    </div>
    <%System.out.println(session.getAttribute("captcha")); %>
</body>
</html>