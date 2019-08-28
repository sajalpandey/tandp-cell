<%-- 
    Document   : getapply
    Created on : Mar 30, 2019, 3:49:23 PM
    Author     : SAJAL-PC
--%>

<%@page import="tandpDao.getapplyDao"%>
<%@page import="tandpPojo.getapplyPojo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int comid=Integer.parseInt(request.getParameter("id"));
            Connection con=DBconnection.DBconnection.getconnection();
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from test where com_id='"+comid+"'");
            rs.next();
            int testid=Integer.parseInt(rs.getString(1));
            int stuid=Integer.parseInt(request.getParameter("hf"));
            getapplyPojo pojo=new getapplyPojo();
            getapplyDao dao=new getapplyDao();
            pojo.setStu_id(stuid);
            pojo.setTest_id(testid);
            int i=dao.insert(pojo);
            if (i > 0) {
                out.println("<script type='text/javascript'> alert('You have applied successfully !!!');window.location.href='Eligibility.jsp';</script>");
            } else {
                out.println("<script type='text/javascript'> alert('Unsuccessfull !!!');window.location.href='Eligibility.jsp';</script>");
            }
        %>
    </body>
</html>
