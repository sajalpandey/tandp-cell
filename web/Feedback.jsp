<%-- 
    Document   : Feedback
    Created on : Feb 24, 2019, 3:41:38 PM
    Author     : SAJAL-PC
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="tandpPojo.feedbackPojo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="tandpDao.feedbackDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="icon" type="image/png" href="assets/img/favicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>Feedback</title>

        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />


        <!-- Bootstrap core CSS     -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Animation library for notifications   -->
        <link href="assets/css/animate.min.css" rel="stylesheet"/>

        <!--  Light Bootstrap Table core CSS    -->
        <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


        <!--  CSS for Demo Purpose, don't include it in your project     -->
        <link href="assets/css/demo.css" rel="stylesheet" />


        <!--     Fonts and icons     -->
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
        <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

    </head>
    <body>
        <%
            response.setHeader("Cache-control", "no-cache, no-store ,must-validate");
        %>
        <div class="wrapper">
            <div class="sidebar" data-color="azure" data-image="assets/img/sidebar-5.jpg">

                <!--
            
                    Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
                    Tip 2: you can also add an image using data-image tag
            
                -->

                <div class="sidebar-wrapper">
                    <div class="logo">
                        <a href="http://www.creative-tim.com" class="simple-text">
                            Training and Placement Cell 
                        </a>
                    </div>

                    <ul class="nav">
                        <li>
                            <a href="Dashboard.jsp">
                                <i class="pe-7s-study"></i>
                                <p>Student Dashboard</p>
                            </a>
                        </li>
                        <li>
                            <a href="UserProfile.jsp">
                                <i class="pe-7s-user"></i>
                                <p>Profile</p>
                            </a>
                        </li>
                        <li>
                            <a href="Eligibility.jsp">
                                <i class="pe-7s-ticket"></i>
                                <p>Eligibility</p>
                            </a>
                        </li>
                        <li>
                            <a href="Result.jsp">
                                <i class="pe-7s-keypad"></i>
                                <p>Result / Company</p>
                            </a>
                        </li>
                        <li class="active">
                            <a href="#">
                                <i class="pe-7s-browser"></i>
                                <p>Feedback</p>
                            </a>
                        </li>
                        <li>
                            <%
                                String sid=session.getAttribute("user").toString();
                            %>
                            <a href="Resume.jsp?sid=<%=sid%>">
                                <i class="pe-7s-note2"></i>
                                <p>Generate Resume</p>
                            </a>
                        </li>
                        
                    </ul>
                </div>
            </div>

            <div class="main-panel">
                <nav class="navbar navbar-default navbar-fixed">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#">Feedback</a>
                        </div>
                        <div class="collapse navbar-collapse">
                            <ul class="nav navbar-nav navbar-left">
                                <li>
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                                        <p class="hidden-lg hidden-md">Dashboard</p>
                                    </a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <i class="fa fa-globe"></i>
                                        <b class="caret hidden-sm hidden-xs"></b>
                                        <span class="notification hidden-sm hidden-xs">5</span>
                                        <p class="hidden-lg hidden-md">
                                            5 Notifications
                                            <b class="caret"></b>
                                        </p>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Notification 1</a></li>
                                        <li><a href="#">Notification 2</a></li>
                                        <li><a href="#">Notification 3</a></li>
                                        <li><a href="#">Notification 4</a></li>
                                        <li><a href="#">Another notification</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="">
                                        <i class="fa fa-search"></i>
                                        <p class="hidden-lg hidden-md">Search</p>
                                    </a>
                                </li>
                            </ul>

                            <ul class="nav navbar-nav navbar-right">
                                <li>

                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <p>
                                            <i class="fa fa-globe"></i>
                                            <b class="caret"></b>
                                        </p>

                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="UserProfile.jsp">Profile</a></li>
                                        <li><a href="#">Setting</a></li>
                                        <li class="divider"></li>
                                        <li><a href="Logout.jsp">Log Out</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link" href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                                        <p class="d-lg-none d-md-block">

                                        </p>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                                        <a class="dropdown-item" href="#">Profile</a>
                                        <br>
                                        <a class="dropdown-item" href="#">Settings</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">Log out</a>
                                    </div>
                                </li>

                                <li class="separator hidden-lg"></li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="header">
                                        <b><h4 class="title"><b>Student's Feedback & experience</b></h4><b>

                                    </div>


                                    <div style="margin-left: 10px" class="content table-responsive table-full-width">
                                        <%
                                            feedbackDao obj1 = new feedbackDao();
                                            ArrayList<tandpPojo.feedbackPojo> plist = obj1.FetchData();
                                            for (feedbackPojo d : plist) {
                                        %>
                                        <h5><b>Feedback Id </b>: <%=d.getFeed_id()%></h5>
                                        <%
                                            Connection con = DBconnection.DBconnection.getconnection();
                                            Statement stmt3 = con.createStatement();
                                            ResultSet rs3 = stmt3.executeQuery("select com_name from company where com_id IN(select com_id from test where test_id='" + d.getTest_id() + "')");
                                            rs3.next();
                                        %>
                                        <h5><b>Company name </b>: <%=rs3.getString(1)%></h5>
                                        <%
                                            Statement stmt2 = con.createStatement();
                                            ResultSet rs2 = stmt2.executeQuery("select jobprofile from result where test_id='" + d.getTest_id() + "' and stu_id='" + d.getStu_id() + "'");
                                            rs2.next();
                                        %>
                                        <h5><b>Job Profile </b>: <%=rs2.getString(1)%></h5>
                                        <h5><b>Skills </b>:<br> <%=d.getSkills()%></h5>
                                        <h5><b>Experience :</b></h5>
                                        <p><%=d.getExperiance()%></p>
                                        <br>
                                        <hr>
                                        
                                        <%}%>
                                    </div>
                                </div>
                            </div>
                            <a href="writeFeedback.jsp"><button type="submit" class="btn btn-info btn-fill">Write a Review</button></a>

                        </div>
                    </div>
                </div>
                <footer class="footer">
                    <div class="container-fluid">
                        <nav class="pull-left">
                            <ul>
                                <li>
                                    <a href="#">
                                        Home
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        T & P cell
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        Profile
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        Blog
                                    </a>
                                </li>
                            </ul>
                        </nav>
                        <p class="copyright pull-right">
                            &copy; <script>document.write(new Date().getFullYear())</script> <a href="http://www.creative-tim.com">Manit T&P cell</a>, made by Sajal pandey & Madhu purty MCA II
                        </p>
                    </div>
                </footer>  


            </div>
        </div>


    </body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

    <!--  Charts Plugin -->
    <script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
    <script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

    <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
    <script src="assets/js/demo.js"></script>



</html>
