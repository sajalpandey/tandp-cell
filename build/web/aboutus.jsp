<%-- 
    Document   : aboutus
    Created on : 19 Feb, 2019, 10:25:04 PM
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
        <title>About Us</title>

        <link rel="stylesheet" type="text/css" href="style.css">

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
                        <li><b><a  href="index.jsp">Home</a></b>
                        <li><b><a href="#">About Us</a></b>
                        <li><b><a href="trainingandplacement.jsp">Training and placement</a></b>
                        <li><b><a href="campusday.jsp">Campus Day</a></b>
                        <li><b><a href="contactus.jsp">Contact Us</a></b>
                    </ul>
                </div>

                <%@include file="login.jsp" %>


            </div>

        </div>

        <div class="middlediv">

            <div class="quicklink">

                <h1 style="color: #8b0000;margin-left:20px"> Quick Links </h1>
                <hr>
                <a href="index.jsp" style="text-decoration-line: none"><h2 style=" margin-left:20px ;color: #21618c ">Home</h2></a>
                <hr>
                <a href="trainingandplacement.jsp" style="text-decoration-line: none"><h2 style=" margin-left:20px;color:  #21618c">Training & placement</h2></a>
                <hr>
                <a href="campusday.jsp" style="text-decoration-line: none"><h2 style=" margin-left:20px;color:  #21618c">Campus Day</h2></a>
                <hr>
                <a href="" style="text-decoration-line: none"><h2 style=" margin-left:20px;color:  #21618c">Academic calendar</h2></a>
                <hr>
                <a href="" style="text-decoration-line: none"><h2 style=" margin-left:20px;color:  #21618c">Notices</h2></a>
                <hr>
                <a href="" style="text-decoration-line: none"><h2 style=" margin-left:20px;color:  #21618c">Anti ragging</h2></a>
                <hr>
                <a href="" style="text-decoration-line: none"><h2 style=" margin-left:20px;color:  #21618c">Student Welfare</h2></a>
                <hr>
                <a href="contactus.jsp" style="text-decoration-line: none"><h2 style=" margin-left:20px;color:  #21618c">Contact</h2></a>

            </div>

            <div class="vl"></div>

            <div class="middledivcontent">
                <p style="color:#45b39d;margin-left: 10px; font-family: georgia;font-size: 30px;">  About  </p><br>
                <div class="aboutmanitimg">
                    <img src="images/manit.jpg">
                </div>

                <div id="imgcontent">
                    <p style="color:#4d5656 ; font-size: 15px;padding: 2px;">Maulana Azad National Institute of Technology (MANIT Bhopal), also known as National Institute of Technology, Bhopal (NIT Bhopal, NIT-B), formerly Maulana Azad College of Technology (MACT)MANIT was started in 1960 as Maulana Azad College of Technology, named after the first Minister of Education, Maulana Abul Kalam AzadThe institute's campus is 650 acres (2.6 km2).</p>
                </div>
                <p style=" color:#45b39d; font-size: 30px;padding: 2px;font-family: georgia"> Vision, Mission, Core Values and Goals :</p>
                <p style="color:#4d5656; font-size: 15px;padding: 4px;">NIT Bhopal, through its Vision, Mission and Core Values, defines herself as: 
                    An Indian institution with world standards
                    A global pool of talented students, committed faculty and conscientious researchers
                    Responsive to real-world problems and, through a synergy of education and research, engineer a better society
                </p>
                <p style=" color:#45b39d; font-family: georgia;font-size: 25px;"> VISION </p>
                <p style="color: #4d5656; font-size: 15px;padding: 4px;"> To be a university globally trusted for technical excellence where learning and research integrate to 	sustain society and industry.
                </p>
                <p style=" color:#45b39d; font-family: georgia;font-size: 25px;"> MISSION </p>
                <p style=" color: #4d5656; font-size: 15px;padding: 4px;">
                    To offer undergraduate, postgraduate, doctoral and modular programmes in multi-disciplinary / inter-disciplinary and emerging areas.
                    To create a converging learning environment to serve a dynamically evolving society.
                    To promote innovation for sustainable solutions by forging global collaborations with academia and industry in cutting-edge research.
                    To be an intellectual ecosystem where human capabilities can develop holistically.
                </p>
                <p style=" color:#45b39d;font-family: georgia;font-size: 25px;"> Core Values: </p><hr>
                <p style="color: #45b39d;font-family: georgia;font-size: 20px;"> Integrity </p>
                <p style="color:#4d5656; font-size: 15px;padding: 4px;"> Honest in intention, fair in evaluation, transparent in deeds and ethical in our personal and 			professional conduct that stands personal and public scrutiny.
                </p>
                <p style="color: #45b39d;font-family: georgia;font-size: 20px;"> Excellence </p>
                <p style="color: #4d5656; font-size: 15px;padding: 4px;"> Commitment to continuous improvement coupled with a passion for innovation that drives the pursuit 		of the best practices; while achievement is always acknowledged, merit will always be recognized.
                </p>
                <p style="color: #45b39d;font-family: georgia;font-size: 20px;"> Unity </p>
                <p style="color: #4d5656; font-size: 15px;padding: 2px;"> Building capacity through trust in others abilities and cultivating respect as the cornerstone of 		collective effort.
                </p>

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
    </body>
</html>
