<%-- 
    Document   : Result
    Created on : Feb 23, 2019, 11:39:43 PM
    Author     : SAJAL-PC
--%>

<%@page import="tandpPojo.resultPojo"%>
<%@page import="tandpDao.resultDao"%>
<%@page import="tandpDao.companyDao"%>
<%@page import="tandpPojo.companyPojo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="icon" type="image/png" href="assets/img/favicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>Result</title>

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
                        <a href="trainingandplacement.html" class="simple-text">
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
                        <li class="active">
                            <a href="#">
                                <i class="pe-7s-keypad"></i>
                                <p>Result / Company</p>
                            </a>
                        </li>
                        <li>
                            <a href="Feedback.jsp">
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
                            <%
                                String photo = "";
                                String name = "";
                                int schno = 0;
                                Statement stmt = null;
                                ResultSet rs = null;
                                String email = "";
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
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="header">
                                        <h3 class="title"><b>Results</b> </h3>
                                        <p class="category"><b>List of selected students...</b></p>
                                    </div>
                                    <div class="content table-responsive table-full-width">
                                        <table class="table table-hover table-striped">
                                            <thead>
                                            <th>Company Name</th>
                                            <th>Student Id</th>
                                            <th>Student Name</th>
                                            <th>Job Profile</th>
                                            <th>Year</th>
                                            </thead>
                                            <%
                                                resultDao obj1 = new resultDao();
                                                ArrayList<tandpPojo.resultPojo> plist = obj1.FetchData();
                                                for (resultPojo d1 : plist) {
                                            %>
                                            <tbody>
                                                <tr>
                                                    <%
                                                        Connection con = DBconnection.DBconnection.getconnection();
                                                        Statement stmt3 = con.createStatement();
                                                        ResultSet rs3 = stmt3.executeQuery("select com_name from company where com_id IN(select com_id from test where test_id='" + d1.getTest_id() + "')");
                                                        rs3.next();
                                                    %>
                                            <h4><td><%=rs3.getString(1)%></td></h4>
                                            <td><%= d1.getStu_id()%></td>
                                            <%

                                                Statement stmt2 = con.createStatement();
                                                ResultSet rs2 = stmt2.executeQuery("select stu_name from student where stu_id='" + d1.getStu_id() + "'");
                                                rs2.next();
                                            %>
                                            <td><b><%=rs2.getString(1)%></b></td>

                                            <td><%=d1.getJob_profile()%></td>
                                            <td><%=d1.getYear()%></td>
                                            </tr>
                                            <%}%>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                            </div>


                            <div class="col-md-12">
                                <div class="card">
                                    <center><b> Seacrh for companies : </b><i class="fa fa-search"></i><input style="height: 30px;width: 300px" type="text" id="myInput" onkeyup="myFunction()" placeholder=""></center>
                                    <div class="header">
                                        <h3 class="title"><b>List of Companies</b></h3>

                                    </div>
                                    <div class="content table-responsive table-full-width">
                                        <table id="myTable" class="table table-hover">
                                            <thead>
                                            <thead>
                                            <th>Com Id</th>
                                            <th>Company Name</th>
                                            <th>Job Profile</th>
                                            <th>Location</th>
                                            <th>Visit Date</th>
                                            </thead>
                                            </thead>
                                            <%
                                                companyDao obj = new companyDao();
                                                ArrayList<tandpPojo.companyPojo> list = obj.FetchData();
                                                for (companyPojo d : list) {
                                            %>
                                            <tbody>
                                                <tr>
                                                    <td><%=d.getCom_id()%></td>
                                                    <td><a href="comDetails.jsp?comid=<%=d.getCom_id()%>"><b><%=d.getCom_name()%></b></a></td>
                                                    <td><%=d.getJob_profile()%></td>
                                                    <td><%=d.getLocation()%></td>
                                                    <td><%=d.getVisit_date()%></td>
                                                </tr>
                                                <%}%>
                                            </tbody>
                                        </table>

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
    <script>
        function myFunction() {
            // Declare variables 
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[1];
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }

    </script>

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
