<%-- 
    Document   : UserProfile
    Created on : Feb 23, 2019, 6:45:48 PM
    Author     : SAJAL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,javax.sql.*" %>

<html>
    <head>
        <meta charset="utf-8" />
        <link rel="icon" type="image/png" href="assets/img/favicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />



        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />


        <!-- Bootstrap core CSS     -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Animation library for notifications   -->
        <link href="assets/css/animate.min.css" rel="stylesheet"/>

        <!--  Light Bootstrap Table core CSS    -->
        <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


        <!--          CSS for Demo Purpose, don't include it in your project     
                <link href="assets/css/demo.css" rel="stylesheet" />-->


        <!--     Fonts and icons     -->
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
        <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>feedback</title>
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
                        <li  class="active">
                            <a href="Feedback.jsp">
                                <i class="pe-7s-browser"></i>
                                <p>Feedback</p>
                            </a>
                        </li>
                        <li>
                            <%
                                String sid = session.getAttribute("user").toString();
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
                            <%
                                String photo = "";
                                String name = "";
                                String edu_details = "", assessements = "", skills = "";
                                String password = "";
                                int schno = 0;
                                int testid = 0;
                                String cname = "", jobprofile = "";
                                float cgpa = 0;
                                Statement stmt = null, stmt2 = null, stmt3 = null, stmt4 = null, stmt5 = null, stmt6 = null;
                                ResultSet rs = null, rs2 = null, rs3 = null, rs4 = null, rs5 = null, rs6 = null;
                                String email = "", address = "";
                                try {

                                    email = session.getAttribute("user").toString();
                                    if (email.equals("")) {
                                        response.sendRedirect("index.jsp");
                                    } else {
                                        Connection con = DBconnection.DBconnection.getconnection();
                                        stmt = con.createStatement();
                                        rs = stmt.executeQuery("select * from student where email='" + email + "'");
                                        rs.next();
                                        photo = rs.getString(9);
                                        schno = rs.getInt(1);
                                        name = rs.getString(2);
                                        stmt2 = con.createStatement();
                                        rs2 = stmt2.executeQuery("select * from stu_resume where stu_id='" + schno + "'");
                                        rs2.next();
                                        cgpa = rs2.getFloat(5);
                                        edu_details = rs2.getString(2);
                                        skills = rs2.getString(4);
                                        assessements = rs2.getString(3);
                                        password = rs.getString(3);
                                        address = rs.getString(8);

                                        stmt3 = con.createStatement();
                                        rs3 = stmt3.executeQuery("select count(*) from result where stu_id='" + schno + "'");
                                        rs3.next();
                                        int count3 = rs3.getInt(1);
                                        if (count3 < 1) {
                                            out.println("<script type='text/javascript'> alert('You are not eligible to write a feedback !!!');window.location.href='Feedback.jsp';</script>");
                                        } 
                                        else {
                                            stmt4 = con.createStatement();
                                            rs4 = stmt4.executeQuery("select test_id from result where stu_id='" + schno + "'");
                                            rs4.next();
                                            testid = rs4.getInt(1);

                                            stmt5 = con.createStatement();
                                            rs5 = stmt5.executeQuery("select com_id from test where test_id='" + testid + "'");
                                            rs5.next();

                                            stmt6 = con.createStatement();
                                            rs6 = stmt6.executeQuery("select * from company where com_id='" + rs5.getInt(1) + "'");
                                            rs6.next();
                                            cname = rs6.getString(2);
                                            jobprofile = rs6.getString(7);
                                        }

                                    }
                                } catch (Exception e) {
                                    response.sendRedirect("index.jsp");
                                }

                            %>
                            <a class="navbar-brand" href="#">Welcome  <b style="color: #00bbff"><%=name%></b></a>
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
                                        <b class="caret hidden-lg hidden-md"></b>
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
                            <div class="col-md-1"></div>
                            <div class="col-md-10">
                                <div class="card">
                                    <div class="header">
                                        <h4 class="title">Write a review</h4>
                                    </div>
                                    <div class="content">
                                        <form action="getwritefeedback.jsp" method="post">
                                            <div class="row">
                                                <div class="col-md-5">
                                                    <div class="form-group">
                                                        <label>Stu_id (disabled)</label>
                                                        <input type="text" class="form-control" readonly placeholder="Company" name="txtid" value=<%=schno%>>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Username</label>
                                                        <input type="text" class="form-control" placeholder="Username" name="txtname" value="<%=name.toString()%>">
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row">
                                                <div class="col-md-5">
                                                    <div class="form-group">
                                                        <label>Test id</label>
                                                        <input type="text" name="Test_id" class="form-control" placeholder="Test_id" value="<%=testid%>">
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="form-group">
                                                        <label>Company Name</label>
                                                        <input type="text" name="txtcname" class="form-control" placeholder="company name" value="<%=cname%>">
                                                    </div>
                                                </div>    
                                            </div>



                                            <div class="row">
                                                <div class="col-md-5">
                                                    <div class="form-group">
                                                        <label>Job profile</label>
                                                        <input type="text" name="txtassessments" class="form-control" placeholder="Your job profile" value="<%=jobprofile%>">
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="form-group">
                                                        <label>Skills</label>
                                                        <input type="text" name="txtskills" class="form-control" placeholder="Your skills" required="">
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>Write your Experience</label>
                                                        <textarea rows="5" name="txtexp" class="form-control" placeholder="Fill your Experience" required=""></textarea>
                                                    </div>
                                                </div>
                                            </div>

                                            <button type="submit" class="btn btn-info btn-fill pull-right">Submit Feedback</button>
                                            <div class="clearfix"></div>
                                        </form>
                                    </div>
                                </div>
                            </div>


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
