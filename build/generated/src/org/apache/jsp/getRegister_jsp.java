package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class getRegister_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      tandpPojo.studentPojo pojo = null;
      synchronized (_jspx_page_context) {
        pojo = (tandpPojo.studentPojo) _jspx_page_context.getAttribute("pojo", PageContext.PAGE_SCOPE);
        if (pojo == null){
          pojo = new tandpPojo.studentPojo();
          _jspx_page_context.setAttribute("pojo", pojo, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("        ");
      tandpDao.studentRegisterDao dao = null;
      synchronized (_jspx_page_context) {
        dao = (tandpDao.studentRegisterDao) _jspx_page_context.getAttribute("dao", PageContext.PAGE_SCOPE);
        if (dao == null){
          dao = new tandpDao.studentRegisterDao();
          _jspx_page_context.setAttribute("dao", dao, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("        ");

            pojo.setStu_name(request.getParameter("studentname"));
            pojo.setPassword(request.getParameter("password"));
            pojo.setConpass(request.getParameter("passrepeat"));
            pojo.setEmail(request.getParameter("email"));
            DateFormat formatter;
            formatter=new SimpleDateFormat("mm-dd-yyyy");
            Date date=formatter.parse(request.getParameter("dob"));
            java.sql.Date sqlDate = new java.sql.Date(date.getTime());
            pojo.setDate(sqlDate);
            pojo.setBranch(request.getParameter("branch"));
            pojo.setGender("gender");
            pojo.setAddress(request.getParameter("address"));
            int i=dao.insert(pojo);
            if (i > 0) {
                out.println("<script type='text/javascript'> alert('Registered !!!');window.location.href='index.jsp';</script>");
            } else {
                out.println("<script type='text/javascript'> alert('Not Registered');window.location.href='registration.html';</script>");
            }
        
      out.write("\n");
      out.write("    </body>\n");
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
