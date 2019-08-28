<%-- 
    Document   : Resume
    Created on : Apr 4, 2019, 6:10:34 PM
    Author     : SAJAL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="resume.css">
        
        <script src="https://docraptor.com/docraptor-1.0.0.js"></script>
        <script>
            var downloadPDF = function () {
                DocRaptor.createAndDownloadDoc("YOUR_API_KEY_HERE", {
                    test: true, // test documents are free, but watermarked
                    type: "pdf",
                    document_content: document.querySelector('html').innerHTML, // use this page's HTML
                    // document_content: "<h1>Hello world!</h1>",               // or supply HTML directly
                    // document_url: "http://example.com/your-page",            // or use a URL
                    // javascript: true,                                        // enable JavaScript processing
                    // prince_options: {
                    //   media: "screen",                                       // use screen styles instead of print styles
                    // }
                })
            }
        </script>
        <style>
            @media print {
                #pdf-button {
                    display: none;
                }
            }
        </style>
    </head>
    <body>
        <%
            String sid = request.getParameter("sid");
            Connection con = DBconnection.DBconnection.getconnection();
            Statement stmt = null, stmt2 = null;
            stmt = con.createStatement();
            ResultSet rs = null, rs2 = null;
            rs = stmt.executeQuery("select * from student where email='" + sid + "'");
            rs.next();
            int id = (rs.getInt(1));
            stmt2 = con.createStatement();
            rs2 = stmt2.executeQuery("select * from stu_resume where stu_id ='" + id + "'");
            rs2.next();
            String photo = rs.getString(9);
        %>
        <div class="myResume">
<!--            <div style="margin-top: 90px;width: 300px;;overflow: hidden">
                <img src="images/logo.jpg" width="100" height="100" />	
            </div>-->
            <div  class="myResume-Contact-Info">
                <h2><%=rs.getString(2)%></h2>
                <h4>MCA-Computer Application</h4>
                <h6>Ph:+91-9956261086</h6>
                <h6><%=rs.getString(4)%></h6>
                <h6>462003 , Bhopal India</h6>
            </div >
            <div  class="myResume-Profile-Pic">
                <img style="height: 120px;width: 120px" src="images/<%=photo.toString()%>" alt="Pawan Mall - resume photo avatar" />
            </div>
            <div class="clear"></div>
            <div class="myResume-Profile-Intro">
                <h1 class="title">Brief Overview</h1>
                <p>I'm something poet, marketer, social media consultant, web designer, web developer, web programmer,<br> blogger(hobby) & a good human being. Originally from Gorakhpur, UP and currently <br>living in the New Delhi. ..</p>

            </div>   
            <div class="myResume-Skills">
                <h1 class="title">Skills</h1>
                <ul class="myResume-Skills-right">
                    <li>Key-expertise</li>
                    <li><%=rs2.getString(4)%></li>
                    <li>operating System</li>
                    <li>DBMS</li>
                    <li>Data Structure and Algorithms</li>
                </ul>
                <ul class="myResume-Skills-left">
                    <li>Development</li>
                    <li>HTML5/CSS3</li>
                    <li>JavaScript & jQuery</li>
                    <li>Jsp Backend</li>
                    <li>SQL Databases</li>
                </ul>

                <ul class="myResume-Skills-right">
                    <li>Software</li>
                    <li>Adobe Photoshop</li>
                    <li>MS Office 2007-2010</li>
                    <li>phpMyAdmin</li>
                </ul>

            </div>
            <div class="clear"></div>
            <div class="myResume-Education">
                <h1 class="title">Education</h1>
                <ul>
                    <li>Maulana Azad National Institute of Tecnology</li>
                    <li>MCA-Computer Application  CGPA : <%=rs2.getString(5)%></li>
                    <li><%=rs2.getString(2)%></li>
                </ul>
            </div>
            <div class="myResume-Education">
                <h1 class="title">Assessments /Certifications</h1>
                <ul>
                    <li><%=rs2.getString(3)%></li>
                </ul>
            </div>
            <div class="myResume-Education">
                <h1 class="title">Personal interest / hobbies</h1>
                <ul>
                    <li>Coding,playing cricket</li>
                </ul>
            </div>
            <div class="myResume-Experience">
                <h1 class="title">Web-Links</h1>
                <ul>
                    <li>facebook - <a href="https://facebook.com/<%=rs.getString(2)%>">https://facebook.com/<%=rs.getString(2)%></a></li>
                    <li>Twitter - <a href="https://twitter.com/<%=rs.getString(2)%>">https://twitter.com/<%=rs.getString(2)%></a></li>
                    <li>Linkedin - <a href="https://linkedin.com/<%=rs.getString(2)%>">https://linkedin.com/<%=rs.getString(2)%></a></li>
                </ul>
            </div>
            <div class="myResume-Experience">
                <h1 class="title">Personal Details</h1>
                <ul>
                    <li>Gender - Male</li>
                    <li>Marital Status - Unmarried</li>
                    <li>Address - <%=rs.getString(8)%></li>
                    <li>Email - <%=rs.getString(4)%></li>
                </ul>
                <ul style="margin-left: 350px;margin-top: -98px">
                    <li>Date of Birth - <%=rs.getString(5)%></li>
                    <li>Known languages - Hindi ,English</li>
                    <li>Phone no - 9956261086</li>
                </ul>
            </div> 
        </div>
    <center><button style="height: 50px;width: 120px; text-size:29px" type="submit" onclick="window.print()">Download</button></center>
    </body>
</html>
