<%-- 
    Document   : Eligibility
    Created on : Feb 23, 2019, 8:38:19 PM
    Author     : SAJAL-PC
--%>

<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Locale"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <title>Eligibility</title>
        <style>

            #myInput {
                background-image: url('/css/searchicon.png'); /* Add a search icon to input */
                background-position: 10px 12px; /* Position the search icon */
                background-repeat: no-repeat; /* Do not repeat the icon image */
                width: 100%; /* Full-width */
                font-size: 16px; /* Increase font-size */
                padding: 12px 20px 12px 40px; /* Add some padding */
                border: 1px solid #ddd; /* Add a grey border */
                margin-bottom: 12px; /* Add some space below the input */
            }

            #myTable {
                border-collapse: collapse; /* Collapse borders */
                width: 100%; /* Full-width */
                border: 1px solid #ddd; /* Add a grey border */
                font-size: 18px; /* Increase font-size */
            }

            #myTable th, #myTable td {
                text-align: left; /* Left-align text */
                padding: 12px; /* Add padding */
            }

            #myTable tr {
                /* Add a bottom border to all table rows */
                border-bottom: 1px solid #ddd; 
            }

            #myTable tr.header, #myTable tr:hover {
                /* Add a grey background color to the table header and on hover */
                background-color: #f1f1f1;




                .pagination a {
                    color: black;
                    float: left;
                    padding: 8px 16px;
                    text-decoration: none;
                }

            </style>
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
                            <li class="active">
                                <a href="#">
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
                                    float cgpa = 0;

                                    Statement stmt = null, stmt2 = null, stmt3 = null, stmt4 = null;
                                    ResultSet rs = null, rs2 = null, rs3 = null, rs4 = null;
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
                                            stmt2 = con.createStatement();
                                            rs2 = stmt2.executeQuery("select * from stu_resume where stu_id='" + schno + "'");
                                            rs2.next();
                                            cgpa = rs2.getFloat(5);
                                            stmt3 = con.createStatement();
                                            rs3 = stmt3.executeQuery("select * from company where stu_cgpa<='" + cgpa + "'");

                                            stmt4 = con.createStatement();
                                            rs4 = stmt4.executeQuery("select * from company");

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
                                                <h4 class="title"><b>List of companies </b></h4>
                                                <p class="category"><b>You are Eligible for...</b></p>
                                            </div>
                                            <div class="content table-responsive table-full-width">
                                                <table class="table table-hover table-striped">
                                                    <thead>
                                                    <th  style="color: black"><b>Com Id</b></th>
                                                    <th  style="color: black"><b>Company Name</b></th>
                                                    <th  style="color: black"><b>Job Profile</b></th>
                                                    <th  style="color: black"><b>Location</b></th>
                                                    <th  style="color: black"><b>Visit Date</b></th>
                                                    <th  style="color: black"><b>Apply</b></th>
                                                    </thead>
                                                    <tbody>
                                                        <%while (rs3 != null && rs3.next()) {%>
                                                        <tr>
                                                            <td><%=rs3.getInt(1)%></td>
                                                            <td><h6><%=rs3.getString(2)%></h6></td>
                                                            <td><%=rs3.getString(7)%></td>
                                                            <td><%=rs3.getString(3)%></td>
                                                            <td><%=rs3.getString(9)%></td>
                                                            <%
                                                                int comid = rs3.getInt(1);
                                                                int count = 0;
                                                                long millis = System.currentTimeMillis();
                                                                millis = millis - 86400000;
                                                                java.sql.Date date = new java.sql.Date(millis);

                                                                String d = rs3.getString(9);
                                                                java.util.Date date2 = new SimpleDateFormat("yyyy-MM-dd").parse(d);

                                                                Connection con = DBconnection.DBconnection.getconnection();
                                                                Statement stmt5 = con.createStatement();
                                                                ResultSet rs5 = stmt5.executeQuery("select * from test where com_id='" + comid + "'");
                                                                if (rs5 != null & rs5.next()) {
                                                                    int tstid = Integer.parseInt(rs5.getString(1));
                                                                    Statement stmt6 = con.createStatement();
                                                                    ResultSet rs6 = stmt6.executeQuery("select count(*) from stuhastest where stu_id='" + schno + "' and test_id='" + tstid + "'");
                                                                    rs6.next();
                                                                    count = rs6.getInt(1);
                                                                }
                                                                if (date.before(date2) & count == 0) {
                                                            %>
                                                            <td><a href="getapply.jsp?id=<%=rs3.getInt(1)%>&hf=<%=schno%>"><button style="padding: 2px; width: 80px;height: 33px; font-size: 15px" type="submit" class="btn btn-danger btn-fill btn-sm active">Apply</button></a></td>
                                                            <%} else if (count == 1) {
                                                            %>
                                                            <td><abbr title="Already applied"><a><button style="padding: 2px; width: 80px;height: 33px; font-size: 15px" type="submit" class="btn btn-danger btn-fill btn-sm disabled">Apply</button></a></abbr></td>
                                                                            <%} else {
                                                                            %>
                                                            <td></td>
                                                            <%}%>
                                                        </tr>

                                                        <%}%>

                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>
                                    </div>

                                    <center>

                                        <div class="pagination">
                                            <a href="#">&laquo;</a>
                                            <a href="#">1</a>
                                            <a href="#">2</a>
                                            <a href="#">3</a>
                                            <a href="#">4</a>
                                            <a href="#">5</a>
                                            <a href="#">6</a>
                                            <a href="#">&raquo;</a>
                                        </div>

                                    </center>


                                    <div class="col-md-12">
                                        <div class="card">
                                            <div class="header">
                                                <h3 class="title"><b>Upcoming Companies</b></h3>
                                                <p><b>this session...</b><p>
                                            </div>
                                            <div class="content table-responsive table-full-width">
                                                <table class="table table-hover">
                                                    <thead>
                                                    <thead>
                                                    <th>Com Id</th>
                                                    <th>Company Name</th>
                                                    <th>Job Profile</th>
                                                    <th>Location</th>
                                                    <th>Visit Date</th>
                                                    </thead>
                                                    </thead>
                                                    <tbody>
                                                        <%while (rs4 != null && rs4.next()) {
                                                                long millis = System.currentTimeMillis();
                                                                java.sql.Date date = new java.sql.Date(millis);

                                                                String d = rs4.getString(9);
                                                                java.util.Date date2 = new SimpleDateFormat("yyyy-MM-dd").parse(d);
                                                                if (date.before(date2)) {
                                                                    java.util.Date date3 = new SimpleDateFormat("dd-mm-yyyy").parse(d);
                                                        %>
                                                        <tr>
                                                            <td><%=rs4.getInt(1)%></td>
                                                            <td><h6><%=rs4.getString(2)%></h6></td>
                                                            <td><%=rs4.getString(7)%></td>
                                                            <td><%=rs4.getString(3)%></td>
                                                            <td><%=rs4.getString(9)%></td>
                                                        </tr>
                                                        <%}
                                                    }%>

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
