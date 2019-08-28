<%-- 
    Document   : getRegister
    Created on : Feb 28, 2019, 7:41:24 PM
    Author     : SAJAL-PC
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import= "com.oreilly.servlet.MultipartRequest" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="pojo" class="tandpPojo.studentPojo"></jsp:useBean>
        <jsp:useBean id="dao" class="tandpDao.studentRegisterDao"></jsp:useBean>
        <%
            MultipartRequest multipartRequest =new MultipartRequest(request,"C:/Users/SAJAL-PC/Documents/NetBeansProjects/project/web/images");
            String name=multipartRequest.getFile("fill1").getName();
            pojo.setStu_name(multipartRequest.getParameter("studentname").toString());
            pojo.setPassword(multipartRequest.getParameter("password").toString());
            pojo.setConpass(multipartRequest.getParameter("passrepeat").toString());
            pojo.setEmail(multipartRequest.getParameter("txtemail").toString());
            String sDate1=multipartRequest.getParameter("dob").toString();
//            out.println(sDate1);
            pojo.setDate(sDate1);
            pojo.setBranch(multipartRequest.getParameter("branch").toString());
            pojo.setGender(multipartRequest.getParameter("gender").toString());
            pojo.setAddress(multipartRequest.getParameter("address").toString());
            pojo.setPhoto(name);
            
            tandpPojo.stuResumePojo pojor= new tandpPojo.stuResumePojo();
            tandpDao.studentResumeDao daor= new tandpDao.studentResumeDao();
//            pojor.setAssessment(request.getParameter(""));
//            pojor.setEdu_details(request.getParameter(""));
//            pojor.setSkills(request.getParameter(""));
//            pojor.setCgpa(Float.parseFloat(request.getParameter("")));
            
            int i=0;
            
            i=dao.insert(pojo);
            
            
            
            if (i > 0) {
                Connection con=DBconnection.DBconnection.getconnection();
                Statement stmt = con.createStatement();
                ResultSet rs=stmt.executeQuery("select stu_id from student where email='"+pojo.getEmail()+"'");
                rs.next();
                out.println(rs.getString(1));
                int stuid=Integer.parseInt(rs.getString(1));
                int j=stmt.executeUpdate("insert into stu_resume (stu_id) values('"+stuid+"')");
                out.println("<script type='text/javascript'> alert('Registered !!!');window.location.href='index.jsp';</script>");
            } else {
                out.println("<script type='text/javascript'> alert('Not Registered');window.location.href='registration.jsp';</script>");
            }
        %>
    </body>
</html>
