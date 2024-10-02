<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Confirmation</title>
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" />
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet" />
    <style>
        body {
            background-color: #f2f5f9;
            font-family: 'Helvetica Neue', sans-serif;
            color: #333;
        }

        .container {
            max-width: 850px;
            margin-top: 90px;
            background-color: #ffffff;
            padding: 40px 30px;
            border-radius: 8px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
        }

        h3 {
            color: #28a745;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
        }

        .section-title {
            font-size: 1.25rem;
            color: #17a2b8;
            margin-bottom: 15px;
            padding-bottom: 5px;
            border-bottom: 2px solid #17a2b8;
        }

        .details, .nominee-section {
            margin-bottom: 30px;
        }

        .details p, .nominee-section p {
            font-size: 1rem;
            line-height: 1.8;
            margin: 0;
        }

        .divider {
            border-bottom: 1px solid #dee2e6;
            margin: 20px 0;
        }

        .print-btn {
            display: block;
            margin: 30px auto 0;
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            font-size: 1rem;
            font-weight: bold;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .print-btn:hover {
            background-color: #0056b3;
        }

        .icon {
            color: #17a2b8;
            margin-right: 10px;
        }

        .card {
            border: 1px solid #dee2e6;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
        }

        footer {
            width: 100%;
            background-color: white;
            margin-top: 30px;
            display: flex;
            padding: 20px;
            justify-content: space-between;
            align-items: center;
            box-shadow: rgba(0, 0, 0, 0.50) 0px 3px 8px;
        }

        footer .social-media p i {
            color: #000000;
            font-size: 18px;
            width: 25px;
            height: 25px;
            border-radius: 12.5px;
            text-align: center;
            padding-top: 5px;
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
            margin-right: 30px;
        }

        @media print {
            nav, footer {
                display: none; 
            }
            body {
                margin: 0;
                background: none; 
            }
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-dark bg-primary fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"> 
                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-bank" viewBox="0 0 16 16">
                    <path d="m8 0 6.61 3h.89a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H15v7a.5.5 0 0 1 .485.38l.5 2a.498.498 0 0 1-.485.62H.5a.498.498 0 0 1-.485-.62l.5-2A.5.5 0 0 1 1 13V6H.5a.5.5 0 0 1-.5-.5v-2A.5.5 0 0 1 .5 3h.89zM3.777 3h8.447L8 1zM2 6v7h1V6zm2 0v7h2.5V6zm3.5 0v7h1V6zm2 0v7H12V6zM13 6v7h1V6zm2-1V4H1v1zm-.39 9H1.39l-.25 1h13.72z" />
                </svg> RGSDSA
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>

    <div class="container">
        <h3>
            <i class="fa fa-check-circle icon"></i>Registration Successful
        </h3>

        <div class="details card">
            <h5 class="section-title">
                <i class="fa fa-user icon"></i>Personal Details
            </h5>
            <p>
                <strong>Customer ID:</strong> ${username}
            </p>
            <p>
                <strong>Password:</strong> ${password}
            </p>
            <p>
                <strong>Account No:</strong> ${accNo}
            </p>
            <p>
                <strong>Name:</strong> ${fname} ${lname}
            </p>
            <p>
                <strong>Gender:</strong> ${gender}
            </p>
            <p>
                <strong>Date of Birth:</strong> ${dob}
            </p>
            <p>
                <strong>Father's Name:</strong> ${fatherName}
            </p>
            <p>
                <strong>Nationality:</strong> ${nationality}
            </p>
            <p>
                <strong>Address:</strong> ${address}
            </p>
            <p>
                <strong>City:</strong> ${city}
            </p>
            <p>
                <strong>District:</strong> ${district}
            </p>
            <p>
                <strong>State:</strong> ${state}
            </p>
            <p>
                <strong>Pin Code:</strong> ${pinCode}
            </p>
            <p>
                <strong>Phone Number:</strong> ${phoneNo}
            </p>
            <p>
                <strong>Aadhaar Number:</strong> ${aadhaarNo}
            </p>
            <p>
                <strong>Pan Number:</strong> ${panNo}
            </p>
            <p>
                <strong>Email:</strong> ${email}
            </p>
            <p>
                <strong>Account Type:</strong> ${accountType}
            </p>
        </div>

        <div class="divider"></div>

        <div class="nominee-section card">
            <h5 class="section-title">
                <i class="fa fa-user-friends icon"></i>Nominee 1
            </h5>
            <p>
                <strong>Nominee:</strong> ${nominee1}
            </p>
            <p>
                <strong>Relationship:</strong> ${relationship1}
            </p>
            <p>
                <strong>Phone Number:</strong> ${phonenum1}
            </p>
            <p>
                <strong>Email:</strong> ${email1}
            </p>
        </div>

        <div class="nominee-section card">
            <h5 class="section-title">
                <i class="fa fa-user-friends icon"></i>Nominee 2
            </h5>
            <p>
                <strong>Nominee:</strong> ${nominee2}
            </p>
            <p>
                <strong>Relationship:</strong> ${relationship2}
            </p>
            <p>
                <strong>Phone Number:</strong> ${phonenum2}
            </p>
            <p>
                <strong>Email:</strong> ${email2}
            </p>
        </div>

        <button class="print-btn" onclick="window.print()">
            <i class="fa fa-print icon"></i>Print
        </button>
    </div>
  <footer>
    <div class="social-media">
      <p>Follow us: 
        <i class="fab fa-facebook"></i> 
        <i class="fab fa-twitter"></i>
        <i class="fab fa-linkedin"></i>
      </p>
    </div>
    <div class="footer-links">
      <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
