<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Front Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
        *{
            margin:0;
            padding:0;
        }
        body{
            height:100vh;
            width:100%;
            background : url(https://www.bai.org/wp-content/uploads/2023/01/digital-1-3.jpg) no-repeat center center/cover;
            display: flex;
            justify-content:flex-end;
            align-items: center;
        }
        .log_page{
            margin-right: 50px;
            height: 300px;
            width: 700px;
            display: flex;
            justify-content:space-evenly;
            align-items: center;
            flex-direction: column;
            color: aliceblue;
        }
        .log_page span{
            padding: 10px;
            font-size: 100px;
            box-shadow: 10px 4px 5px #c5cde1;
        }
        .log_page input{
            margin: 10px 0px;
            border-bottom-left-radius: 15px;
            border-top-right-radius: 15px;
            background: #26477f;
            padding:5px 10px ;
            font-size: 50px;
            color: rgb(245, 247, 248);
        }
        body #help-sign{
            margin: 20px;
            position: fixed;
            top: 0px;
            right: 0px;
            color: rgb(252, 250, 250);
            font-size: 25px;
        }
        .log_page fieldset {
            padding-bottom: 10px;
        }
        .log_page fieldset legend{
            margin-left: 25px;
        }
        /* hovering code..... */
        .log_page input:hover{
            background-color: #427af3;
            color: #070505;
            cursor: pointer;
        }
        body #help-sign:hover{
            cursor: pointer;
            color: #e89958;;
        }
    </style>
</head>
<body>
    <i class="fa-solid fa-circle-question" id="help-sign"></i>
    <div class="log_page">
        <fieldset>
            <span>RSGDSA Bank</span>
            <legend>SINCE 1999</legend>
        </fieldset>
		<a href="loginPage.jsp"><input type="submit"  value="Login"/></a>
	</div>
</body>

</html>