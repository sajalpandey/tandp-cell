<%-- 
    Document   : contactus
    Created on : 19 Feb, 2019, 10:27:09 PM
    Author     : MADHUPURTY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            body {font-family: georgia;}

            /* Full-width input fields */
            input[type=text], input[type=password] {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
            }

            /* Set a style for all buttons */
            button {
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
            }

            button:hover {
                opacity: 0.8;
            }

            /* Extra styles for the cancel button */
            .cancelbtn {
                width: auto;
                padding: 10px 18px;
                background-color: #f44336;
            }

            /* Center the image and position the close button */
            .imgcontainer {
                text-align: center;
                margin: 24px 0 12px 0;
                position: relative;
            }

            img.avatar {
                width: 40%;
                border-radius: 50%;
            }

            .container {
                padding: 16px;
            }

            span.psw {
                float: right;
                padding-top: 16px;
            }

            /* The Modal (background) */
            .modal {
                display: none; /* Hidden by default */
                position: fixed; /* Stay in place */
                z-index: 1; /* Sit on top */
                left: 0;
                top: 0;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
                padding-top: 60px;
            }

            /* Modal Content/Box */
            .modal-content {
                background-color: #fefefe;
                margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
                border: 1px solid #888;
                width: 30%; /* Could be more or less, depending on screen size */
            }

            /* The Close Button (x) */
            .close {
                position: absolute;
                right: 25px;
                top: 0;
                color: #000;
                font-size: 35px;
                font-weight: bold;
            }

            .close:hover,
            .close:focus {
                color: red;
                cursor: pointer;
            }

            /* Add Zoom Animation */
            .animate {
                -webkit-animation: animatezoom 0.6s;
                animation: animatezoom 0.6s
            }

            @-webkit-keyframes animatezoom {
                from {-webkit-transform: scale(0)} 
                to {-webkit-transform: scale(1)}
            }

            @keyframes animatezoom {
                from {transform: scale(0)} 
                to {transform: scale(1)}
            }

            /* Change styles for span and cancel button on extra small screens */
            @media screen and (max-width: 300px) {
                span.psw {
                    display: block;
                    float: none;
                }
                .cancelbtn {
                    width: 100%;
                }
            }
        </style>
        <title>Contact Us</title>

        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" type="text/css" href="C:\Users\Sajal Pandey\Desktop\tanp cell\font-awesome-4.7.0\font-awesome-4.7.0\css\font-awesome.min.css">

    </head>
    <body>
        <div id="maindiv">
            <div class="header" style="margin-top: -150px;">

                <div class="logo">
                    <img src="images/logo.jpg" width="100" height="100" />	
                </div>

                <div class="manitlogo"> <h3 style="color: white ;font-size:20px">Maulana Azad National Institute Of Technology,  Bhopal</h3><h1 	style=		"color: white; font-size: 30px">TRAINING AND PLACEMENT <br><br>CELL</h1>
                </div>

                <div class="menu">
                    <ul >
                        <li><b><a href="index.jsp">Home</a></b>
                        <li><b><a href="aboutus.jsp">About Us</a></b>
                        <li><b><a href="trainingandplacement.jsp">Training and placement</a></b>
                        <li><b><a href="campusday.jsp">Campus Day</a></b>
                        <li><b><a href="#">Contact Us</a></b>
                    </ul>
                </div>

                <%@include file="login.jsp" %>

            </div>	


            <div class="contactmain">

                <div class="contactdiv">
                    <h1 style="color: white;background-color:#8b0000;height:35px;padding-top:5px;padding-left:15px;font-family: georgia;">Contact Us</h1>
                    <p style="color: black;font-style:">Maulana Azad National Institute of Technology (MANIT), Bhopal, MP India <br>pin-462003<br>Fax-+91-755-2670562<br>Web-<a href="manit.ac.in">Manit</a><br>PRO(Public Relation Officer)
                        Dr.Ajay Verma<br>Contact No:0755-4051633
                        <br>Email:pro@manit.ac.in</p>
                    <h2 style="color:#8b0000 ">Director</h2><p style="color: black;font-style:">Dr Narendra Singh Raghuwanshi<br>Email- nsr@manit.ac.in</p><h2 style="color:#8b0000 ">Registrar</h2><p style="color: black;font-style:">Atul Prakash Trivedi<br>Email- registrar@manit.ac.in<br>Phone- 0755-4051012</p>
                    <h2 style="color:#8b0000 ">Dean:Student Welfare</h2><p style="color: black;font-style:">Dr J.L Bhagoria<br>Email- deansw@manit.ac.in<br>Phone- 0755-4051023</p>
                    <h2 style="color:#8b0000 ">Dean:Academic Affairs</h2><p style="color: black;font-style:">Dr N.D Mittal<br>Email- deanacademicr@manit.ac.in<br>Phone- 0755-4051020
                    </p>
                    <h1 style="color: white;background-color:#8b0000;height:35px;padding-top:7px;padding-left:15px;font-family:georgia;">Reach MANIT</h1>
                    <p><div class="mapdiv"><iframe style="height: 99.9%;width: 99.9%; padding: 0px" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14667.237550403506!2d77.39969677285634!3d23.21361620770431!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x397c42e43fe40941%3A0x10377d4af64ac6e9!2sMaulana+Azad+National+Institute+of+Technology%2C+Bhopal%2C+Madhya+Pradesh!5e0!3m2!1sen!2sin!4v1549287845233" width="700" height="350" frameborder="0" style="border:0" allowfullscreen></iframe></div></p>
                </div>

                <div class="contactmainquicklink">
                    <!-- <h1 style="color:white;background-color: #8b0000;;margin-left:20px"> Administration </h1> -->
                    <!-- <hr> -->
                    <a href="index.html" style="text-decoration-line: none"><h2 style=" margin-left:20px ;color: white;">Director</h2></a>
                    <hr>
                    <a href="" style="text-decoration-line: none"><h2 style=" margin-left:20px;color: white;">Chairperson</h2></a>
                    <hr>
                    <a href="" style="text-decoration-line: none"><h2 style=" margin-left:20px;color: white;">Registrar</h2></a>
                    <hr>
                    <a href="" style="text-decoration-line: none"><h2 style=" margin-left:20px;color: white;">Deans</h2></a>
                    <hr>
                    <a href="" style="text-decoration-line: none"><h2 style=" margin-left:20px;color: white;">Finance committee</h2></a>
                    <hr>
                    <a href="" style="text-decoration-line: none"><h2 style=" margin-left:20px;color: white;">Nit Council</h2></a><hr>
                </div>

                <div class="quicklinkheading">
                    <h1 style="color: white">Administration</h1>
                </div>
            </div>

            <div class="footer">

                <div class="footerinfo" style="color: white ;float: right;">
                    <h3>Designed by  --<a href="">Web Team-MCA</a> </h3>
                    <h2>Training & Placement Office, 2019-20</h2>
                    <p style="padding: 2px">
                        <a href="" style="font-size: 14px; color: white ;text-decoration: none;">About Us   </a>
                        <a href="" style="font-size: 14px; color: white ;text-decoration: none;">Acedemics    </a>
                        <a href="" style="font-size: 14px; color: white ;text-decoration: none;">Trainig and Placement    </a>
                        <a href="" style="font-size: 14px; color: white ;text-decoration: none;">Campus Day    </a>
                    </p>
                </div>

                <div class="footerlogo"><h1></h1>
                    <b style=" font-size: 37px"><b>MANIT <br>BHOPAL</b></b><br/>
                    <b>@ 2019 All Rights Reserved Terms of Use and Privacy Policy</b>
                </div>


                <div class="footerlink">
                    <a href="" style="text-decoration: none">
                        <img src="images/facebooklogo.png"> 
                        <img src="images/twitterlogo.png"> 
                        <img src="images/gmailogo.png"> 
                        <img src="images/youtubelogo.png">
                    </a>
                </div>
            </div>
        </div>

    </body>
</html>






