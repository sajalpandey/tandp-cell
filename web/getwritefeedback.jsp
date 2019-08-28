<%-- 
    Document   : getwritefeedback
    Created on : Apr 7, 2019, 11:39:59 PM
    Author     : SAJAL-PC
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="tandpDao.feedbackDao"%>
<%@page import="tandpPojo.feedbackPojo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            feedbackPojo pojo=new feedbackPojo();
            feedbackDao dao=new feedbackDao();
            pojo.setTest_id(Integer.parseInt(request.getParameter("Test_id")));
            pojo.setStu_id(Integer.parseInt(request.getParameter("txtid")));
            pojo.setSkills(request.getParameter("txtskills"));
            pojo.setExperiance(request.getParameter("txtexp"));
            String cname=request.getParameter("txtcname");
            Connection con=DBconnection.DBconnection.getconnection();
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select location from company where com_name='"+cname+"'");
            rs.next();
            pojo.setLocation(request.getParameter(rs.getString(1)));
            int i=0;
            i=dao.insert(pojo);
            
            if(i>0)
            {
                out.println("<script type='text/javascript'> alert('Feedback Submitted !!!');window.location.href='Feedback.jsp';</script>");
            }
            else
            {
                out.println("<script type='text/javascript'> alert('Feedback NOT submitted !!!');window.location.href='Feedback.jsp';</script>");
            }
        %>
    </body>
</html>
