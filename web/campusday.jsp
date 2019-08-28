<%-- 
    Document   : campusday
    Created on : 19 Feb, 2019, 10:23:29 PM
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

                <div class="manitlogo"> <h3 style="color: white ;font-size:20px;font-family: georgia">Maulana Azad National Institute Of Technology,  Bhopal</h3><h1 	style=		"color: white; font-size: 30px;font-family: georgia">TRAINING AND PLACEMENT <br><br>CELL</h1>
                </div>

                <div class="menu" style="font-family: georgia">
                    <ul >
                        <li><b><a href="index.jsp">Home</a></b>
                        <li><b><a href="aboutus.jsp">About Us</a></b>
                        <li><b><a href="trainingandplacement.jsp">Training and placement</a></b>
                        <li><b><a href="#">Campus Day</a></b>
                        <li><b><a href="contactus.jsp">Contact Us</a></b>
                    </ul>
                </div>

                <%@include file="login.jsp" %>

            </div>


		<div class="campusmaindiv">
			<div class="campuscontent">
				<center><h3 style="color: black; height: 38px; width: 800px; padding: 4px;">Click on company name for more details:</h3></center>
				
					 <ul  style="background:#8b0000;color: white; height: 38px; width: 928px; padding: 4px;">
	                  <li style="color:white; font-size: 19px;">S.no</a></li>
	                  <li style="color:white; margin-left: 178px; font-size: 19px;">Title</a></li>
	                  <li style="color:white; margin-left: 500px; font-size: 19px;">Date of visit</a></li>
                    </ul>
                   <pre style="color: black;"><h2>1                 <a href="myop.pdf" download="myoperator">Myoperator</a>                                             3/1/2019</h2></pre>
                   <pre style="color: black;"><h2>2                 <a href="tata.pdf" download="Tata">Tata</a>                                                  17/1/2019</h2></pre>
                   <pre style="color: black;"><h2>3                 <a href="pinelabs.pdf" download="Pinelabs">Pinelabs</a>                                              29/1/2019</h2></pre>
                   <pre style="color: black;"><h2>4                 <a href="intellect.pdf" download="Intellect">Intellect</a>                                              6/2/2019</h2></pre>
                   <pre style="color: black;"><h2>5                 <a href="mpow.pdf" download="Mpower">Mpower</a>                                                19/2/2019</h2></pre>
                   <pre style="color: black;"><h2>6                 <a href="Raam group.pdf" download="Raam group">Raam group</a>                                            28/2/2019</h2></pre>
                   <pre style="color: black;"><h2>7                 <a href="aviesolution.pdf" download="Aviesolution">Aviesolution</a>                                           7/3/2019</h2></pre>
                   <pre style="color: black;"><h2>8                 <a href="coz.pdf" download="cozinazat">Cozinazat</a>                                             27/3/2019</h2></pre>
                   <pre style="color: black;"><h2>9                 <a href="Mphasis.pdf" download="Mphasis">Mphasis</a>                                                2/4/2019</h2></pre>
                   <pre style="color: black;"><h2>10                <a href="Peoplestrong.pdf" download="Peoplestrong">PeopleStrong</a>                                          15/4/2019</h2></pre>
                   <pre style="color: black;"><h2>11                <a href="irdeto.pdf" download="irdeto">Irdeto</a>                                                30/4/2019</h2></pre>
                   <pre style="color: black;"><h2>12                <a href="endurance.pdf" download="endurance">Endurance</a>                                              5/5/2019</h2></pre>
                   <pre style="color: black;"><h2>13                <a href="Relliance_Jio.pdf" download="Relliance_Jio">Relliance jio</a>                                         14/5/2019</h2></pre>
                   <pre style="color: black;"><h2>14                <a href="Raja_Softwere.pdf" download="Raja_Softwere">Raja software</a>                                         22/5/2019</h2></pre>
                   <pre style="color: black;"><h2>15                <a href="irident.pdf" download="irident">Irident</a>                                                4/6/2019</h2></pre>
                   <pre style="color: black;"><h2>16                <a href="Maruti_suziki.pdf" download="Maruti_suziki">Maruti suziki</a>                                         12/4/2019</h2></pre>
                   <pre style="color: black;"><h2>17                <a href="sigmoid.pdf" download="sigmoid">Sigmoid</a>                                               28/4/2019</h2></pre>
            </div>
				

		<div class="campusquicklinks">

				<h1 style="color: #8b0000;margin-left:20px"> Quick Links </h1>
				<hr>
				<a href="index.html" style="text-decoration-line: none"><h2 style=" margin-left:20px ;color: #21618c ">Home</h2></a>
				<hr>
				<a href="" style="text-decoration-line: none"><h2 style=" margin-left:20px;color:  #21618c">Training & placement</h2></a>
				<hr>
				<a href="" style="text-decoration-line: none"><h2 style=" margin-left:20px;color:  #21618c">Campus Day</h2></a>
				<hr>
				<a href="" style="text-decoration-line: none"><h2 style=" margin-left:20px;color:  #21618c">Academic calendar</h2></a>
				<hr>
				<a href="" style="text-decoration-line: none"><h2 style=" margin-left:20px;color:  #21618c">Notices</h2></a>
				<hr>
				<a href="" style="text-decoration-line: none"><h2 style=" margin-left:20px;color:  #21618c">Anti ragging</h2></a>
				<hr>
				<a href="" style="text-decoration-line: none"><h2 style=" margin-left:20px;color:  #21618c">Student Welfare</h2></a>
				<hr>
				<a href="" style="text-decoration-line: none"><h2 style=" margin-left:20px;color:  #21618c">Contact</h2></a>
				
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
