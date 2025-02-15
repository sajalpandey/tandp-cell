package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;

public final class UserProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <link rel=\"icon\" type=\"image/png\" href=\"assets/img/favicon.ico\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\" />\n");
      out.write("\n");
      out.write("        \n");
      out.write("\n");
      out.write("        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core CSS     -->\n");
      out.write("        <link href=\"assets/css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("\n");
      out.write("        <!-- Animation library for notifications   -->\n");
      out.write("        <link href=\"assets/css/animate.min.css\" rel=\"stylesheet\"/>\n");
      out.write("\n");
      out.write("        <!--  Light Bootstrap Table core CSS    -->\n");
      out.write("        <link href=\"assets/css/light-bootstrap-dashboard.css?v=1.4.0\" rel=\"stylesheet\"/>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--          CSS for Demo Purpose, don't include it in your project     \n");
      out.write("                <link href=\"assets/css/demo.css\" rel=\"stylesheet\" />-->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--     Fonts and icons     -->\n");
      out.write("        <link href=\"http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>\n");
      out.write("        <link href=\"assets/css/pe-icon-7-stroke.css\" rel=\"stylesheet\" />\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>User Profile</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            response.setHeader("Cache-control","no-cache, no-store ,must-validate");
        
      out.write("\n");
      out.write("        <div class=\"wrapper\">\n");
      out.write("            <div class=\"sidebar\" data-color=\"azure\" data-image=\"assets/img/sidebar-5.jpg\">\n");
      out.write("\n");
      out.write("                <!--\n");
      out.write("            \n");
      out.write("                    Tip 1: you can change the color of the sidebar using: data-color=\"blue | azure | green | orange | red | purple\"\n");
      out.write("                    Tip 2: you can also add an image using data-image tag\n");
      out.write("            \n");
      out.write("                -->\n");
      out.write("\n");
      out.write("                <div class=\"sidebar-wrapper\">\n");
      out.write("                    <div class=\"logo\">\n");
      out.write("                        <a href=\"http://www.creative-tim.com\" class=\"simple-text\">\n");
      out.write("                            Training and Placement Cell \n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <ul class=\"nav\">\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"Dashboard.jsp\">\n");
      out.write("                                <i class=\"pe-7s-study\"></i>\n");
      out.write("                                <p>Student Dashboard</p>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"UserProfile.jsp\">\n");
      out.write("                                <i class=\"pe-7s-user\"></i>\n");
      out.write("                                <p>Profile</p>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"Eligibility.jsp\">\n");
      out.write("                                <i class=\"pe-7s-ticket\"></i>\n");
      out.write("                                <p>Eligibility</p>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"Result.jsp\">\n");
      out.write("                                <i class=\"pe-7s-keypad\"></i>\n");
      out.write("                                <p>Result / Company</p>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"Feedback.jsp\">\n");
      out.write("                                <i class=\"pe-7s-browser\"></i>\n");
      out.write("                                <p>Feedback</p>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"#\">\n");
      out.write("                                <i class=\"pe-7s-note2\"></i>\n");
      out.write("                                <p>Generate Resume</p>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"notifications.html\">\n");
      out.write("                                <i class=\"pe-7s-bell\"></i>\n");
      out.write("                                <p>Notifications</p>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        \n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"main-panel\">\n");
      out.write("                <nav class=\"navbar navbar-default navbar-fixed\">\n");
      out.write("                    <div class=\"container-fluid\">\n");
      out.write("                        <div class=\"navbar-header\">\n");
      out.write("                            <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#navigation-example-2\">\n");
      out.write("                                <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                            </button>\n");
      out.write("                            ");

                                String photo = "";
                                String name="";
                                String edu_details="",assessements="",skills="";String password="";
                                int schno=0,cgpa=0;
                                Statement stmt = null,stmt2=null;
                                ResultSet rs = null,rs2=null;
                                String email= "" , address= "";
                                try {
                                    
                                    email= session.getAttribute("user").toString();
                                    if (email.equals("")) {
                                        response.sendRedirect("index.jsp");
                                    } else {
                                        Connection con = DBconnection.DBconnection.getconnection();
                                        stmt = con.createStatement();
                                        rs = stmt.executeQuery("select * from student where email='"+email+"'");
                                        rs.next();
                                        photo = rs.getString(9);
                                        schno=rs.getInt(1);
                                        name=rs.getString(2);
                                        stmt2 = con.createStatement();
                                        rs2= stmt2.executeQuery("select * from stu_resume where stu_id='"+schno+"'");
                                        rs2.next();
                                        cgpa=rs2.getInt(5);
                                        edu_details=rs2.getString(2);
                                        skills=rs2.getString(4);
                                        assessements=rs2.getString(3);
                                        password=rs.getString(3);
                                        address=rs.getString(8);
                                    }
                                } catch (Exception e) {
                                    response.sendRedirect("index.jsp");
                                }
                            
      out.write("\n");
      out.write("                            <a class=\"navbar-brand\" href=\"#\">Welcome  <b style=\"color: #00bbff\">");
      out.print(name);
      out.write("</b></a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"collapse navbar-collapse\">\n");
      out.write("                            <ul class=\"nav navbar-nav navbar-left\">\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">\n");
      out.write("                                        \n");
      out.write("                                        <p class=\"hidden-lg hidden-md\">Dashboard</p>\n");
      out.write("                                    </a>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"dropdown\">\n");
      out.write("                                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">\n");
      out.write("                                        <b class=\"caret hidden-lg hidden-md\"></b>\n");
      out.write("                                        <p class=\"hidden-lg hidden-md\">\n");
      out.write("                                            5 Notifications\n");
      out.write("                                            <b class=\"caret\"></b>\n");
      out.write("                                        </p>\n");
      out.write("                                    </a>\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                        <li><a href=\"#\">Notification 1</a></li>\n");
      out.write("                                        <li><a href=\"#\">Notification 2</a></li>\n");
      out.write("                                        <li><a href=\"#\">Notification 3</a></li>\n");
      out.write("                                        <li><a href=\"#\">Notification 4</a></li>\n");
      out.write("                                        <li><a href=\"#\">Another notification</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"\">\n");
      out.write("                                        <i class=\"fa fa-search\"></i>\n");
      out.write("                                        <p class=\"hidden-lg hidden-md\">Search</p>\n");
      out.write("                                    </a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("\n");
      out.write("                            <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                                <li>\n");
      out.write("                                    \n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"dropdown\">\n");
      out.write("                                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">\n");
      out.write("                                        <p>\n");
      out.write("                                            <i class=\"fa fa-globe\"></i>\n");
      out.write("                                            <b class=\"caret\"></b>\n");
      out.write("                                        </p>\n");
      out.write("\n");
      out.write("                                    </a>\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                        <li><a href=\"UserProfile.jsp\">Profile</a></li>\n");
      out.write("                                        <li><a href=\"#\">Setting</a></li>\n");
      out.write("                                        <li class=\"divider\"></li>\n");
      out.write("                                        <li><a href=\"Logout.jsp\">Log Out</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"nav-item dropdown\">\n");
      out.write("                                    <a class=\"nav-link\" href=\"#pablo\" id=\"navbarDropdownProfile\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                        \n");
      out.write("                                        <p class=\"d-lg-none d-md-block\">\n");
      out.write("                                            \n");
      out.write("                                        </p>\n");
      out.write("                                    </a>\n");
      out.write("                                    <div class=\"dropdown-menu dropdown-menu-right\" aria-labelledby=\"navbarDropdownProfile\">\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"#\">Profile</a>\n");
      out.write("                                        <br>\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"#\">Settings</a>\n");
      out.write("                                        <div class=\"dropdown-divider\"></div>\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"#\">Log out</a>\n");
      out.write("                                    </div>\n");
      out.write("                                </li>\n");
      out.write("                                \n");
      out.write("                                <li class=\"separator hidden-lg\"></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"content\">\n");
      out.write("                    <div class=\"container-fluid\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-md-1\"></div>\n");
      out.write("                            <div class=\"col-md-10\">\n");
      out.write("                                <div class=\"card\">\n");
      out.write("                                    <div class=\"header\">\n");
      out.write("                                        <h4 class=\"title\">Edit Profile</h4>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"content\">\n");
      out.write("                                        <form action=\"getProfileUpdate.jsp\" method=\"post\">\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-md-5\">\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <label>Stu_id (disabled)</label>\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" disabled placeholder=\"Company\" name=\"txtid\" value=");
      out.print(schno);
      out.write(">\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"col-md-3\">\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <label>Username</label>\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" placeholder=\"Username\" name=\"txtname\" value=\"");
      out.print(name.toString());
      out.write("\">\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"col-md-4\">\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <label for=\"exampleInputEmail1\">Password</label>\n");
      out.write("                                                        <input type=\"password\" class=\"form-control\" name=\"txtpassword\" value=");
      out.print(password);
      out.write(">\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-md-6\">\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <label>Email address (disabled)</label>\n");
      out.write("                                                        <input type=\"email\" name=\"txtemail\" class=\"form-control\"  disabled placeholder=\"email\" value=\"");
      out.print(email.toString());
      out.write("\">\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"col-md-6\">\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <label>CGPA</label>\n");
      out.write("                                                        <input type=\"text\" name=\"txtcgpa\" class=\"form-control\" placeholder=\"cgpa\" value=\"");
      out.print(cgpa);
      out.write("\">\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-md-12\">\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <label>Address</label>\n");
      out.write("                                                        <input type=\"text\" name=\"txtaddress\" class=\"form-control\" placeholder=\"Home Address\" value=\"");
      out.print(address);
      out.write("\">\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-md-4\">\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <label>Assessments</label>\n");
      out.write("                                                        <input type=\"text\" name=\"txtaddress\" class=\"form-control\" placeholder=\"Mention any certificate or diploma\" value=\"");
      out.print(assessements);
      out.write("\">\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"col-md-4\">\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <label>Skills</label>\n");
      out.write("                                                        <input type=\"text\" name=\"txtskills\" class=\"form-control\" placeholder=\"Your soft skills\" value=\"");
      out.print(skills);
      out.write("\">\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"col-md-4\">\n");
      out.write("                                                        <label>Change picture</label>\n");
      out.write("                                                        \n");
      out.write("                                                            <input type=\"file\" name=\"pic\" accept=\"image/*\">\n");
      out.write("   \n");
      out.write("                                                </div>\n");
      out.write("                                                \n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-md-12\">\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <label>Education Details</label>\n");
      out.write("                                                        <textarea rows=\"5\" name=\"txtedudetails\" class=\"form-control\" placeholder=\"Fill your education details(10th,12th and graduation)\" value=\"\">");
      out.print(edu_details);
      out.write("</textarea>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                                    \n");
      out.write("                                            <button type=\"submit\" class=\"btn btn-info btn-fill pull-right\">Update Profile</button>\n");
      out.write("                                            <div class=\"clearfix\"></div>\n");
      out.write("                                        </form>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <footer class=\"footer\">\n");
      out.write("                    <div class=\"container-fluid\">\n");
      out.write("                        <nav class=\"pull-left\">\n");
      out.write("                            <ul>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\">\n");
      out.write("                                        Home\n");
      out.write("                                    </a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\">\n");
      out.write("                                        T & P cell\n");
      out.write("                                    </a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\">\n");
      out.write("                                        Profile\n");
      out.write("                                    </a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\">\n");
      out.write("                                        Blog\n");
      out.write("                                    </a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </nav>\n");
      out.write("                        <p class=\"copyright pull-right\">\n");
      out.write("                            &copy; <script>document.write(new Date().getFullYear())</script> <a href=\"http://www.creative-tim.com\">Manit T&P cell</a>, made by Sajal pandey & Madhu purty MCA II\n");
      out.write("                        </p>\n");
      out.write("                    </div>\n");
      out.write("                </footer>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("    <!--   Core JS Files   -->\n");
      out.write("    <script src=\"assets/js/jquery.3.2.1.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"assets/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("    <!--  Charts Plugin -->\n");
      out.write("    <script src=\"assets/js/chartist.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!--  Notifications Plugin    -->\n");
      out.write("    <script src=\"assets/js/bootstrap-notify.js\"></script>\n");
      out.write("\n");
      out.write("    <!--  Google Maps Plugin    -->\n");
      out.write("    <script type=\"text/javascript\" src=\"https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE\"></script>\n");
      out.write("\n");
      out.write("    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->\n");
      out.write("    <script src=\"assets/js/light-bootstrap-dashboard.js?v=1.4.0\"></script>\n");
      out.write("\n");
      out.write("    <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->\n");
      out.write("    <script src=\"assets/js/demo.js\"></script>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
