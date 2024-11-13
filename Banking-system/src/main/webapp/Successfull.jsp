<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>


         /* Container Styling */
         .container {
            margin-top: 200px;
            margin-bottom: 100px;
            background-image: linear-gradient(to bottom right, rgb(30, 0, 255), rgb(146, 101, 251));
            width: 550px;
            padding: 30px;
            background-color: white;
            box-shadow: 0 0 25px rgba(0, 0, 0, 0.2);
            border-radius: 20px;
            font-family: Arial, Helvetica, sans-serif;
           
            
         }
    </style>
</head>
<body>
    


    <div class="container">
        <!-- Content here -->
        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
            <button type="button" class="btn-close" disabled aria-label="Close"></button>
          </div>

        
        <p class="fs-1 text-center "><i class="fa-solid fa-circle-check" style="color: #21e61e;"></i><br></p>
        
        <p class="fs-2 text-center fw-bold text-white" >Congratulation</p><br>
        <%
        String msg= (String) request.getAttribute("msg");
        if(msg != null)%>
        <p class="text-center text-white"> <% out.print(msg); %></p>
       
        
      </div>
      
</body>
</html>