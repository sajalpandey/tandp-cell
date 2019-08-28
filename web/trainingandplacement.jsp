<%-- 
    Document   : trainingandplacement
    Created on : 19 Feb, 2019, 10:28:27 PM
    Author     : MADHUPURTY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css"> 

            h3,p
            {
                margin-left: 20px;
            }

        </style>
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
        <title>Training and Placement</title>

        <link rel="stylesheet" type="text/css" href="style.css">

    </head>
    <body>
        <div id="maindiv">


            <div class="header">

                <div class="logo">
                    <img src="images/logo.jpg" width="100" height="100" /> 
                </div>

                <div class="manitlogo"><h3 style="color: white ;font-size:20px">Maulana Azad National Institute Of Technology,  Bhopal</h3><h1   style=    "color: white; font-size: 30px">TRAINING AND PLACEMENT <br><br>CELL</h1>
                </div>

                <div class="menu">
                    <ul >
                        <li><b><a href="index.jsp">Home</a></b>
                        <li><b><a href="aboutus.jsp">About Us</a></b>
                        <li><b><a href="#">Training and placement</a></b>
                        <li><b><a href="campusday.jsp">Campus Day</a></b>
                        <li><b><a href="contactus.jsp">Contact Us</a></b>
                    </ul>
                </div>
                <%@include file="login.jsp" %>
               

            </div>

        </div>

        <div class="placementcontent"> 
            <div class="placementimage">
                <img  id="plcimg" src="images/tnp.png" style=" height:100%">
            </div>
            <div class="plcmntrules">
                <h1 style="background:#8b0000;color: white; height: 38px; width: 100%; padding: 4px;padding-top: 7px;">Message</h1>
                <p style="color:black; font-size: 15px; padding: 10px;"> It  gives  us  immense  pleasure  to  extend  to  you  a  most  cordial  invitation  to  participate  in  the  Campus  Recruitment  Programme  of  National  Institute  of  Technology,  Bhopal.  With  an  increasing  trust  being  placed  on  Institute-Industry  interaction,  it  is  my  sincere  belief  that  your  esteemed  organization  and  NIT  Bhopal  stand  to  gain  immensely  from  this  symbiotic  relationship.<br>
                    <br>

                    Our  institute  holds  the  pride  of  place  being  pioneers  in  the  field  of  engineering  and  technical  education  in  the  country  and  has  a  glorious  heritage.  We  have  been  continuously  ranked  among  the  elite  by  our  peers  and  our  constant  pursuit  of  excellence  has  made  our  institute  a  focal  point  in  technical  education  for  students  and  faculty  members  alike.<br>
                    <br>

                    MANIT,  Bhopal  always  strives  for  excellence  and  perfection.  We  work  with  a  motive  to  develop student potential to its greatest degree and provide quality technical education along with soft skills and professional communication, for our students to compete and perform well globally. Young brains coupled with dynamic thoughts and fresh talent all ready to explore the heights of the ever- existing and expanding the corporate world, is what we aim to provide to the companies in this competitive environment.
                    <br><br>
                    The Training and Placement Cell of the college works round the clock to give its students, a stepping stone into the corporate world and intelligent, astute, hard-working and technically proficient minds to the hiring companies, so that both, the companies and the students, can excel and achieve great heights.
                    <br><br>
                    Our students have bagged placements in organizations such as Epic, Nutanix, Microsoft, Goldman Sachs, Amazon, etc. We also secured 4th position in the NIRF rankings based on the graduation outcome this year.
                    <br><br>
                    We witnessed an average annual package of 10.65 lacs and the percentage placements of 92% for the branch Computer Science and Engineering for the session 2017-18. We have constantly been thriving in terms of our placement percentage of the eligible candidates, which was a record 82% for the last placement session 2018-19, and in terms of the average annual package of the institute accounting to 7.57 LPA for the same batch. The placement percentage for all the branches was above 72% as well.
                    <br>
                    The students of NIT, Bhopal are selected through the process of JEE entrance examination, which makes our college one of the most aspired NIT to get admission.
                    <br>
                    We have always tried to extend a long-lasting relationship with the companies and continuing it forward, we would be highly honored to serve as host for your campus visits. We hope that your organization and our students will create synergies and work for the betterment of the organization.

                    Come, visit our campus and give us a chance to serve our skilled minds to you.</p>
                <br>

                <h1 style="background:#8b0000;color: white; height: 38px; width: 100%;padding:4px;padding-top: 7px;">Placement Team</h1>

                <h3 style="color: black">Faculty Members</h3>
                <h3 style="color:black">Director MANIT Bhopal</h3>
                <h3 style="color:black">Training and Placement Officer</h3>
                <p style="color:black; font-size: 15px">Dr. Aruna Saxena (7898216935)<br>
                    Email- tpwnitb[at]gmail[dot]com</p>
                <h3 style="color:black">Head of the Departments</h3>
                <p style="color:black; font-size: 15px; padding: 2px;">Dr. Yogesh K. Garg, Head of the Department, Architecture & Planning<br> <br>
                    Dr. M. M. Malik, Head of the Department, Bio Science & Engineering<br><br>
                    Dr. S. Suresh, Head of the Department, Chemical<br><br>
                    Dr. S. K. Katiyar, Head of the Department, Civil<br><br>
                    Dr. Meenu Chawla, Head of the Department, CSE<br><br>
                    Dr. Manisha Dubey, Head of the Department, Electrical<br><br>
                    Dr. Arvind Rajawat, Head of the Department, ECE <br><br>
                    Dr. Prashant V. Baredar, Head of the Department, Energy<br><br>
                    Dr. Vinita Mohindra, Head of the Department, Humanities <br><br>
                    Dr. Madhvi Shakya , Head of the Department, Management Studies<br><br>
                    Dr. Sujoy Das, Head of the Department, MCA<br><br>
                    Dr. S.P.S Rajput, Head of the Department, Mechanical<br><br>
                    Dr.Sanjay Srivastava, Head of the Department, MSME</p>

                <h1 style="background:#8b0000;color: white; height: 38px; width: 100%; padding: 4px;padding-top: 7px;">Placement Policy</h1>
                <h3 style="color: black">Placement Policies</h3>
                <p style="color:black; font-size: 15px; padding: 2px;"> Students of batch 2018-19, attending the campus process may note the following placement regulations:-</p> 
                <h3 style="color:black">One Student One Job:</h3>
                <p style="color:black; font-size: 15px;">1. Every student eligible for the campus recruitment is entitled to only one job. The student is not allowed to exchange the job once he gets placed in a company.  They are advised to study the company portfolio before they apply.<br><br>

                    2. The students who get a placement offer or a pre-placement offer on the basis of their 3rd-year interns are not allowed to appear for any other placement programme offered by any company, except the dream companies. <br><br>

                    3. The same will be applied on final and pre-final year internships. Students who get an on-campus internship are not eligible for any other on-campus internship.</p>
                <h3 style="color:black">General Rules</h3>
                <h3 style="color:black">Registration</h3>
                <p style="color:black; font-size: 15px;">1.    Register for the on-campus placements only when you are interested in appearing in the same. Students who are not sitting for on-campus placements are advised, not to register for the same.</p>
                <h3 style="color:black">Selection Process:</h3>
                <p style="color:black; font-size: 15px;">2. The presence in the Pre-Placement Talk (PPT) is compulsory for all the students who are attending the company’s recruitment procedure, else they would not be allowed to sit for the remaining proceedings.<br><br>

                    3.  Any student who is found not attending the complete selection process of any company will be debarred from attending the selection process for next 3 companies of the concerned branch.</p>
                <h3 style="color:black">DISCIPLINE:</h3>
                <p style="color:black; font-size: 15px;">4.  Any student who gets caught in cheating activities during the company’s test will be debarred from attending the selection process of next 5 companies of the concerned department.<br><br>

                    5. Deliberate forgery of any kind or sharing any wrong information with the T&P cell, (as sharing incorrect pointers in the registered data, or mentioning misleading information on the resume) will lead to expulsion of the candidate from the entire placement process for the complete session.</p>
                <h3 style="color:black">Pre Placement Offers</h3>
                <p style="color:black; font-size: 15px;">6.  Any student, who is found contacting the company executives regarding the cancellation of PPOs or any other such matters, will be debarred from attending the entire campus selection process.<br><br>

                    7.  If a student is not interested in the company offering PPO, he/she must not participate in the internship test procedure itself. </p>
                <h3 style="color:black">Rules For Online Test</h3>
                <p style="color:black; font-size: 15px;"> 
                    1. Persons who are not allotted duties for the specified online test of a company must not be present for invigilation.<br><br>
                    2. Mobile phones are strictly not allowed while giving online tests.<br><br>
                    3. Students need to bring college id-cards for the online tests otherwise they won’t be allowed to write the test.<br><br>
                    4. All online tests will be conducted after 4:00 PM unless specified externally.<br><br>
                    5. Nobody will be allowed to enter the hall/lab after the scheduled time for the test.<br><br>
                    6. Nobody is allowed to leave the hall/lab during the test.<br><br>
                    7. Company wise online test team should coordinate with the overall online team for the smooth conduction of online test. Company wise online test team will not be allowed to enter the hall.<br><br>
                    8. It is mandatory to sign attendance register before entering the hall. No rough sheet or attendance sheet will be circulated inside the hall. Attendance will be verified with the results of the test and then only results will be announced.<br><br>
                    9.If any student is caught in any cheating activities during the online test, he/ she will be debarred from the complete campus since it affects the name and reputation of the institute.
                </p>
                <h3 style="color:black">New online Rules for the Lab:</h3>
                <p style="color:black; font-size: 15px;">

                    1. Students are not allowed to carry water bottles or snacks in the labs.<br><br>
                    2. It is compulsory for the students to write their name and scholar number on the rough sheets used during the test.<br><br>
                    3. Students are advised to plug in the LAN cable and the power plugs back to their respective locations. You are under the surveillance of CCTV cameras and actions would be taken against student caught violating the rule.<br><br>

                    Violating any of the above rules will lead to debarment of the candidate from next two companies of the respective branch<br><br>

                    <b>Note:</b> If found violating the above rules, student will be debarred from entire campus. If the student is placed, his/her placement will be withdrawn. </p>
                <h1 style="background:#8b0000;color: white; height: 38px; width: 100%; padding: 4px;padding-top: 7px;">Guidelines For Students</h1>

                <h3 style="color:black">Guidelines for Student:</h3>
                <p style="color:black; font-size: 15px;"> Below are the following guidelines to be followed by the Students appearing for Campus selection:<br><br>
                    •    The Students of 2017-18 batch may note that the Eligibility Criteria fixed for attending Campus Selection process are as under:-<br><br>
                    1.    Only those Students with 75% attendance will be allowed to appear in the Campus Recruitment/ interviews.<br><br>
                    2.    There should not be any proctorial record of the Students attending the campus process.<br><br>
                    3.    Students with 6.0 CGPA and above aggregate marks will be allowed to attend the selection process.<br><br>
                    4.   All Students appearing for the campus placement including the volunteers, are supposed to dress up in formals (boys – full sleeve shirt, formal trousers & shoes; Girls – Formal dress only will be allowed), right from the beginning of PPT till end of entire selection process. <br><br>
                    5.   Students are advised to not interact directly with the visiting company Executives as it might create confusion during the selection process.<br><br>
                    6.   It is mandatory for a student who clears any one level of the selection process of campus recruitment to necessarily appear for the next level. For example, if a student has cleared the written test then he has to appear for the further rounds of the process.</p>

                <h1 style="background:#8b0000;color: white; height: 38px; width: 100%; padding: 4px;padding-top: 7px;">Docement Checklist:</h1>
                <p style="color:black; font-size: 15px;">
                    1.    College Identity Proof  (Student identity card)<br><br>
                    2.    Alternate Identity Proof (Driving License, PAN card, Voter Id, Aadhar Card, Passport)<br><br>
                    3.    Student CV (Curriculum Vitae)<br><br>
                    4.    Caste Certificate<br><br>
                    5.    Passport size Photograph (Minimum two)<br><br>
                    6.    Mark sheets of 10th, 12th, and all semesters<br><br>
                    7.    Certificates of Achievements<br><br>
                    8.    Internship/Training Certificates<br><br>
                    9.    Minor Project and Major Project reports</p>

            </div>
            <div class="placementquicklinks">

                <h1 style="color: #8b0000;margin-left:20px"> Quick Links </h1>
                <hr>
                <a href="index.html" style="text-decoration-line: none"><h2 style=" margin-left:20px ;color: #21618c ">Home</h2></a>
                <hr>
                <a href="#" style="text-decoration-line: none"><h2 style=" margin-left:20px;color:  #21618c">Training & placement</h2></a>
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
                <a href="contactus.html" style="text-decoration-line: none"><h2 style=" margin-left:20px;color:  #21618c">Contact</h2></a>

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