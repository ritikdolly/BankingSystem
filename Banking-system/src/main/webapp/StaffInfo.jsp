<%@page import="Bank.Model.staff.AddStaff"%>
<%@page import="Bank.Model.AddInformation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Staff Information</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <style>
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
            display: flex;
            justify-content: center;
            align-items: flex-start;
            width: 100%;
            height: 95vh;
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
        
        .container {
            background-color: transparent;
            display: flex;
            justify-content: space-between;
            align-items: start;
            flex-direction: column;
            padding: 40px;
            max-width: 900px;
            box-shadow: 0px 0px 5px #333;
            border-radius: 5px;
        }
        #staffForm{
            width: 100%;
        }
        
        .infoBoxes {
            max-width: 100%;
            display: flex;
            justify-content: space-around;
            flex-direction: column;
            background-color: transparent;
            padding: 10px;
            margin: 10px;
            color: rgb(7, 7, 6);
        }
        
        .infoBoxes label {
            display: flex;
            align-items: center;
            width: 100%;
            font-size: 15px;
            margin-bottom: 10px;
            font-weight: 530;
        }
        
        .infoBoxes label input {
            flex-grow: 1;
            margin-left: 10px;
            padding: 5px;
            font-size: 15px;
            color: rgb(7, 7, 6);
            border: none;
            background-color: transparent;
            border-radius: 4px;
        }
        
        .infoBoxes .detail {
            width: 100%;
            margin-top: 10px;
        }
        
        /* Print-specific styles */
        @media print {
        
            /* Hide all elements except the container */
            body * {
                visibility: hidden;
            }
        
            .container,
            .container * {
                visibility: visible;
            }
        
            /* Remove box-shadow, padding, and other unnecessary styles */
            .container {
                box-shadow: none;
                padding: 0;
                width: 100%;
                max-width: none;
                margin: 0;
                position: absolute;
                top: 0;
                left: 0;
            }
        
            /* Remove background color from body */
            body {
                background-color: white;
                padding-top: 0;
            }
        }
        
    </style>

</head>

<body>
    <div class="nav-bar">
        <div class="nav-bar-first">
            <i class="fa-solid fa-building-columns"></i>
            <span>RSGDSA Bank</span>
        </div>
        <div class="nav-bar-second">
            <a href=""><i class="fa-regular fa-circle-user"></i></a>
            <a href="loginPage.jsp"><i aria-valuemax="logout"
                    class="fa-solid fa-arrow-right-from-bracket"></i>Logout</a>
        </div>
    </div>
    <div class="container">
        <div class="title-bar">
            <h3>Staff Information</h3>
        </div>
        <div id="staffForm">
            <div class="infoBoxes">
                <label for="userid">UserID : <input type="text" value="${empId}" id="userid" disabled name="userid"></label>
                <label for="password">Password : <input type="text" value="${pwd}" id="password" disabled name="pwd" /></label>
            </div>
            <div class="infoBoxes">
                <h4>Personal Information</h4>
                <label for="f-name">Name : <input type="text" value="${fname} ${lname}" id="name" disabled name="name" /></label>
                <label for="gender">Gender : <input type="text" value="${gender}" id="gender" disabled name="gender" /></label>
                <label for="dob">DOB : <input type="date" value="${dob}" id="dob" disabled name="dob" /></label>
                <label for="father-Name">Father's Name : <input type="text" value="${fatherName}" id="father-Name" disabled
                        name="fatherName" /></label>
                <label for="nationality">Nationality : <input type="text" value="${nationally}" id="nationality" disabled
                        name="nationality" /></label>
                <label for="address">Address : <input type="text" id="address" value="${address}" disabled name="address" /></label>
                <label>City : <input type="text" value="${city}" disabled name="city" /> </label>
                <label>District : <input type="text" value="${district}" disabled name="district" /></label>
                <label>State : <input type="text" value="${state}" disabled name="state" /></label>
                <label>Pin Code :<input type="Number" value="${pinCode}" disabled id="pin-code" name="pincode" /></label>
                <label for="phone-number">Phone Number :<input type="text" value="${phoneNo}" id="phone-number" disabled /></label>
                <label for="email">Email :<input type="email" value="${email}" id="email" disabled name="email" /></label>
                <label for="emergency-number">Emergency Number :<input type="text" value="${emergencyNO}"  value="${emergencyNO}" disabled maxlength="10"
                        id="emergency-number" name="emergencyNo" /></label>
            </div>
            <div class="infoBoxes">
                <h4>Employment Information</h4>
                <label for="position">Position :<input type="text" value="${postion}" disabled name="position" id="position"></label>
                <label for="joining-date">Date of joining :<input type="date" value="${dateofJoin}" disabled name="joiningdate"></label>
                <label for="work-schedule">Employment Workschedule :<input type="text" value="${workschedule}" disabled name="workschedule"
                        id="work-schedule"></label>
                <label for="account-number">Account Number :<input type="text" value="${accNo}" disabled name="accountnumber"
                        id="account-number"></label>
                <label for="bank-name">Bank Name :<input type="text" value="${bankName}" disabled name="bankname" id="bank-name"></label>
                <label for="tax-Id">Tax Identification Number :<input type="text" value="${taxId}" disabled name="taxId"
                        id="tax-Id"></label>
                <label for="aadharNo">Aadhar Number :<input type="text" value="${aadharNo}" disabled name="aadharNo"
                        id="aadharNo"></label>
                <label for="panNo">PAN Number :<input type="text" value="${panNo}" disabled name="panNo"
                        id="panNo"></label>
            </div>
            <div class="infoBoxes">
                <h4>Education Qualification</h4>
                <h5>Matriculate</h5>
                <div class="detail">
                    <label for="year10">Passing Year :<input type="text" value="${year10 }" disabled id="year10" name="year10"></label>
                    <label for="school-name10">School Name :<input type="text" value="${schoolName10}" disabled id="school-name10"
                            name="schoolname10"></label>
                    <label for="tenth-percent">Percentage :<input type="number" value="${tenthpercent}" disabled id="tenth-percent"
                            name="tenthpercent"></label>
                </div>
                <h5>High School Graduate</h5>
                <div class="detail">
                    <label for="year12">Passing Year :<input type="text" id="year12" value="${year12}" disabled name="year12"></label>
                    <label for="school-name12">School/College Name :<input type="text" value="${schoolName12}" disabled id="school-name12"
                            name="schoolname12"></label>
                    <label for="twelfth-percent">Percentage :<input type="number" value="${twelthpercent}" disabled id="tenth-percent"
                            name="twelfthpercent"></label>
                </div>
                <h5>Other Qualification</h5>
                <div class="detail">
                    <label for="degree-name">Degree Name :<input type="text" value="${degreeName} disabled id="degree-name"
                            name="degreename"></label>
                    <label for="year-other">Passing Year :<input type="text" value="${degreeyear}; disabled id="year-other"
                            name="degreeyear"></label>
                    <label for="college-name-other">College Name : <input type="text" value="${collegeName}" disabled id="college-name-other"
                            name="collegename"></label>
                    <label for="degree-percent">Percentage :<input type="number" value="${degreepercent}" disabled id="degree-percent"
                            name="degreepercent"></label>
                </div>
            </div>
            <div class="infoBoxes">
                <h4>Employment History</h4>

                <label for="previous-Emp">Previous Employer :<input type="text" value="${previousEmp}" disabled name="previousEmp"
                        id="previousEmp"></label>
                <label for="emp-position">Position :<input type="text" value="${position}" disabled name="empposition"
                        id="emp-position"></label>
                <label for="emp-duration">Employment Duration :<input type="number" value="${empDuration}" disabled id="emp-duration"
                        name="empduration"></label>
                <label for="leaving-reason">Reason for Leaving :<input type="text" value="${leavingreson}" disabled id="leaving-reason"
                        name="leavingreason"></label>
            </div>
            <div class="infoBoxes">
                <h4>References</h4>
                <h5>Reference No.1</h5>
                <div class=" detail ">
                    <label for="ref1">Reference Name :<input type="text" value="${refName1}"  name="reference1" disabled id="ref1"></label>
                    <label for="relation1">RelationShip :<input type="text" value="${relation1}" name="refrelation1" disabled
                            id="relation1"></label>
                    <label for="ph-number1">Phone Number :<input type="text" value="${refPhNo1}" name="refphno1" disabled
                            id="ph-number1"></label>
                    <label for="email1">Email :<input type="email" name="refemail1" value="${refEmail1}" disabled id="email1"></label>
                </div>
                <h5>Reference No.1</h5>
                <div class="detail">
                    <label for="ref2">Reference Name : <input type="text" value="${refName2}" name="reference2" disabled id="ref2"></label>
                    <label for="relation2">RelationShip :<input type="text" value="${relation2}" name="refrelation2" disabled
                            id="relation2"></label>
                    <label for="ph-number2">Phone Number :<input type="text" value="${refPhNo2}" name="refphno2" disabled
                            id="ph-number2"></label>
                    <label for="email2">Email :<input type="email" name="refemail2" value="${refEmail2}" disabled id="email2"></label>
                </div>
            </div>
            <!-- Print Button -->
            <button onclick="printContainer()" class="btn btn-primary mt-4">
                <i class="fa fa-print"></i> Print
            </button>
        </div>
    </div>
</body>
<script>
    function printContainer() {
        // Hide all elements except the container
        const body = document.body;
        const container = document.querySelector('.container');
        const otherElements = body.children;

        for (let i = 0; i < otherElements.length; i++) {
            if (otherElements[i] !== container) {
                otherElements[i].style.display = 'none';
            }
        }

        // Print the container content
        window.print();

        // Restore the visibility of all elements
        for (let i = 0; i < otherElements.length; i++) {
            otherElements[i].style.display = '';
        }
    }
</script>

</html>