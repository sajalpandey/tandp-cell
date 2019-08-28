<%-- 
    Document   : registration
    Created on : Mar 18, 2019, 7:17:40 PM
    Author     : SAJAL-PC
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            body {font-family: Arial, Helvetica, sans-serif;background-color: #f7f7f7;}

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
        <!-- <title>Index Page</title> -->

        <link rel="stylesheet" type="text/css" href="style.css">


        <title>Registration</title>

        <link rel="stylesheet" type="text/css" href="style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            body 
            {
                font-family: Arial, Helvetica, sans-serif;
                background-color: white;
            }

            * {
                box-sizing: border-box;
            }

            /* Add padding to containers */
            .container 
            {
                padding: 16px;
                background-color: white;
                -moz-box-shadow: 1px 2px 4px rgba(0, 0, 0,0.5);
                -webkit-box-shadow: 1px 2px 4px rgba(0, 0, 0, .5);
                box-shadow: 1px 2px 4px rgba(0, 0, 0, .5);
            }

            /* Full-width input fields */
            input[type=text], input[type=password] 
            {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: inline-block;
                border: none;
                background: #f1f1f1;
            }

            input[type=text]:focus, input[type=password]:focus 
            {
                background-color: #ddd;
                outline: none;
            }

            /* Overwrite default styles of hr */
            hr 
            {
                border: 1px solid #f1f1f1;
                margin-bottom: 25px;
            }

            /* Set a style for the submit button */
            .registerbtn
            {
                background-color: #4CAF50;
                color: white;
                padding: 16px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
                opacity: 0.9;
            }

            .registerbtn:hover {
                opacity: 1;
            }

            /* Add a blue text color to links */
            a {
                color: dodgerblue;
            }

            /* Set a grey background color and center the text of the "sign in" section */
            .signin 
            {
                background-color: #f1f1f1;
                text-align: center;
            }
        </style>

    </head>
    <body>
        <div id="maindiv">


            <div class="header">

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
                        <li><b><a href="contactus.jsp">Contact Us</a></b>
                    </ul>
                </div>

                <div class="login">
                    <button class="button1"  Onclick="document.getElementById('id01').style.display = 'block'">Login</button>
                </div>

            </div>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tandp", "root", "");
                Statement stmt = con.createStatement();
            %>
            <script type="text/javascript">
                function ajaxval()
                {
                    var ajaxRequest;
                    try
                    {
                        ajaxRequest = new XMLHttpRequest();
                    } catch (exception) {
                        alert("browser not supported");
                    }
                    ajaxRequest.onreadystatechange = function ()
                    {
                        if (ajaxRequest.readyState == 4)
                        {
                            var ajaxDisplay = document.getElementById("res");
                            ajaxDisplay.innerHTML = ajaxRequest.responseText;
                            res = ajaxRequest.responseText;
                        }
                    }
                    var sname = document.getElementById("email").value;
                    var querystring = "?email=" + sname;
                    ajaxRequest.open("GET", "ajaxemail.jsp" + querystring, true);
                    ajaxRequest.send(null);
                }
            </script>
            <div class="studentregistration">
                <form action="getRegister.jsp" method="post" enctype="multipart/form-data">
                    <div class="container">
                        <h1 style="font-size: 30px">Register</h1>
                        <p>Please fill in this form to create an account.</p>
                        <hr>

                        <label for="Name"><b style="font-size: 20px">Student Name</b></label>
                        <input type="text" placeholder="Enter Your Name" name="studentname" required><br><br>

                        <label for="Photo"><b style="font-size: 20px">Student Photo</b></label><br><br>

                        <input type="file" name="fill1"> <br><br><br>


                        <label for="psw"><b style="font-size: 20px">Password</b></label>
                        <input type="password" placeholder="Enter Password" name="password" required>

                        <label for="psw-repeat"><b style="font-size: 20px">Repeat Password</b></label>
                        <input type="password" placeholder="Repeat Password" name="passrepeat" 
                               required>

                        <label for="email"><b style="font-size: 20px">Email</b></label>
                        <input type="text" placeholder="Enter Email"  id="email" onchange="ajaxval()"  name="txtemail" required>
                        <p id="res" style="color:red"></p>
                        <label for="DOb"><b style="font-size: 20px">DOB</b></label>
                        <input type="date" placeholder="Enter DOB" name="dob" required><br><br>

                        <label for="gender"><b style="font-size: 20px">Gender</b></label>
                        <input type="radio" name="gender" value="male" checked> Male
                        <input type="radio" name="gender" value="female"> Female
                        <input type="radio" name="gender" value="other"> Other<br><br>

                        <label for="Branch"><b style="font-size: 20px">Branch</b></label>
                        <input type="text" placeholder="Enter Your Branch" name="branch" required>

                        <label for="Address"><b style="font-size: 20px">Address</b></label>
                        <input type="text" placeholder="Enter Address" name="address" required>


                        <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

                        <button type="submit" class="registerbtn">Register</button>
                    </div>

                    <div class="container signin">
                        <p>Already have an account? <a href="#" Onclick="document.getElementById('id01').style.display = 'block'";>Sign in</a>.</p>
                    </div>
                </form>
                
                <div id="id01" class="modal">

                    <form class="modal-content animate" action="/action_page.php">
                        <div class="imgcontainer">
                            <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                            <img src="images/img_avatar2.png" alt="Avatar" class="avatar">
                        </div>

                        <div class="container">
                            <label for="uname"><b>Username</b></label>
                            <input type="text" placeholder="Enter Username" name="uname" required>

                            <label for="psw"><b>Password</b></label>
                            <input type="password" placeholder="Enter Password" name="psw" required>

                            <button type="submit">Login</button>
                            <label>
                                <input type="checkbox" checked="checked" name="remember"> Remember me
                            </label>
                        </div>

                        <div class="container" style="background-color:#f1f1f1">
                            <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn">Cancel</button>
                            <span class="psw">Forgot <a href="#">password?</a></span>
                        </div>
                    </form>
                </div>

                <script>
                    // Get the modal
                    var modal = document.getElementById('id01');

                    // When the user clicks anywhere outside of the modal, close it
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                </script>

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
