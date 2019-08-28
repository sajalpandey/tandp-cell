<%-- 
    Document   : getLogin
    Created on : Feb 25, 2019, 8:19:43 PM
    Author     : SAJAL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="pojo" class="tandpPojo.studentPojo"></jsp:useBean>
        <jsp:useBean id="dao" class="tandpDao.studentLoginDao"></jsp:useBean>
        <%
            pojo.setEmail((request.getParameter("stuemail")));
            pojo.setPassword((request.getParameter("password")));
            String i=dao.authenticateUser(pojo.getEmail(),pojo.getPassword());
            if(i.equals("false"))
            {
                out.println("<script type='text/javascript'> alert('Invalid Username or Password !!!');window.location.href='index.jsp';</script>");
            }
            else
            {
                session.setAttribute("user",i);
                response.sendRedirect("Dashboard.jsp");
            }
        %>
    </body>
</html>
