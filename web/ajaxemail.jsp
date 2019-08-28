<%-- 
    Document   : ajaxemail
    Created on : Feb 21, 2019, 8:01:11 PM
    Author     : SAJAL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,javax.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
            String email = request.getParameter("email");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tandp", "root", "");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select count(*) from  manit_server where gmail='"+email+"'");
            rs.next();
            int count = rs.getInt(1);
            
            if (count > 0) {
                out.println("");
            }
            else
            {
                out.println("Email dosn't exits in Manit Database !!");
            }
        %>
    </body>
</html>
