<%-- 
    Document   : index
    Created on : 19 Feb, 2019, 10:12:49 PM
    Author     : MADHUPURTY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            body
            {
                font-family: georgia;
                background-color: #f7f7f7;
            }

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
        <title>Index Page</title>

        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" type="text/css" href="C:\Users\Sajal Pandey\Desktop\tanp cell\font-awesome-4.7.0\font-awesome-4.7.0\css\font-awesome.min.css">
    </head>
    <body>
        <div id="maindiv">


            <div class="header">

                <div class="logo">
                    <img src="images/logo.jpg" width="100" height="100" />	
                </div>

                <div class="manitlogo"><h3 style="color: white ;font-size:20px;font-family: georgia">Maulana Azad National Institute Of Technology,  Bhopal</h3><h1 	style=		"color: white; font-size: 30px;font-family: georgia">TRAINING AND PLACEMENT <br><br>CELL</h1>
                </div>

                <div class="menu" style="font-family: georgia">
                    <ul >
                        <li><b><a href="index.jsp">Home</a></b>
                        <li><b><a  href="aboutus.jsp">About Us</a></b>
                        <li><b><a  href="trainingandplacement.jsp">Training and placement</a></b>
                        <li><b><a  href="campusday.jsp">Campus Day</a></b>
                        <li><b><a  href="contactus.jsp">Contact Us</a></b>
                    </ul>
                </div>

                
                
                <%@include file="login.jsp" %>
                
                    
            </div>

            <div class="slider">

                <div class="slideshow-container">

                    <div class="mySlides fade">
                        <div class="numbertext">1 / 3</div>
                        <img  id="image" src="images/manit2.jpg" style="width:auto;height:100%">
                        <div class="text">Manit</div>
                    </div>

                    <div class="mySlides fade">
                        <div class="numbertext">2 / 3</div>
                        <img  id="image" src="images/manit3.jpg" style="width:auto; height:100%">
                        <div class="text">Placed students</div>
                    </div>

                    <div class="mySlides fade">
                        <div class="numbertext">3 / 3</div>
                        <img  id="image" src="images/manit1.jpg" style="width:120%;height:100%">
                        <div class="text">Trainig and placement front</div>
                    </div>
                    <div style="text-align:center">
                        <span class="dot"></span> 
                        <span class="dot"></span> 
                        <span class="dot"></span> 
                    </div>
                </div>
                <br>



                <script>
                    var slideIndex = 0;
                    showSlides();

                    function showSlides()
                    {
                        var i;
                        var slides = document.getElementsByClassName("mySlides");
                        var dots = document.getElementsByClassName("dot");
                        for (i = 0; i < slides.length; i++)
                        {
                            slides[i].style.display = "none";
                        }
                        slideIndex++;
                        if (slideIndex > slides.length) {
                            slideIndex = 1;
                        }
                        for (i = 0; i < dots.length; i++) {
                            dots[i].className = dots[i].className.replace(" active", "");
                        }
                        slides[slideIndex - 1].style.display = "block";
                        dots[slideIndex - 1].className += " active";
                        setTimeout(showSlides, 2000); // Change image every 2 seconds
                    }
                </script>


            </div>

            <div class="about">

                <div class="notification">
                    <marquee  style="text-align:center;" behavior="scroll" direction="up" onmouseover="this.stop();" onmouseout="this.start()" >
                        <p>Manit Global Alumni meet <br>on 8-9 feb 2019</p>
                        <p>Registration for session 2019</p>
                        <p>Holidays 2019-20</p>
                        <p>IIT Bhopal</p> 
                        <p>Nov Result 2018</p>
                        <p>Hostel Allotement for PG</p>
                        <p>New Girls hostel</p>
                        <p>Faculty For Mca</p> 
                    </marquee>
                </div>

                <div class="aboutmanit"><p style="color: #45b39d; font-size: 22px">About MANIT Bhopal</p><hr>
                    <p style="color: grey; font-size: 15px;padding: 4px;">Maulana Azad National Institute of Technology (MANIT Bhopal), also known as National Institute of Technology, Bhopal (NIT Bhopal, NIT-B), formerly Maulana Azad College of Technology (MACT)MANIT was started in 1960 as Maulana Azad College of Technology, named after the first Minister of Education, Maulana Abul Kalam AzadThe institute's campus is 650 acres (2.6 km2).There are eleven hostels in campus, ten for boys and one for girls.
                        Also there is a separate teaching block known as new teaching block, for civil, chemical and material science and metallurgical engineering departments. It also has a shopping complex.All course work and examinations for all majors and subjects are conducted with English language as the mode of instruction........<a href="">Read more</a> </p>

                </div>

                <div class="aboutdirector"><p style="color: #45b39d; font-size: 20px">About Training And Placement</p><hr>
                    <p style="color: grey; font-size: 15px;padding: 4px;">Training and Placement Office(TPO), MANIT Bhopal is responsible for conducting all recruitment related activities of the institute. The integral part of the TPO is a team of student coordinators from all courses of the college who work tirelessly to ensure that top notch opportunities are brought to the students & manages all interactions between the visiting companies and the college. It works round the clock to improve the placements and internships statistics of the college. TPO,MANIT assures the best facilties and support possible to the recruiting companies. The details on facilties can be viewed here. For more queries contact us.....<a href="">Read more </a></p>
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