<%-- 
    Document   : getProfileUpdate
    Created on : Mar 24, 2019, 1:16:09 PM
    Author     : SAJAL-PC
--%>

<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="tandpDao.studentResumeDao"%>
<%@page import="tandpDao.studentRegisterDao"%>
<%@page import="tandpPojo.stuResumePojo"%>
<%@page import="tandpPojo.studentPojo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            MultipartRequest multipartRequest =new MultipartRequest(request,"C:/Users/SAJAL-PC/Documents/NetBeansProjects/project/web/images");
            String name=multipartRequest.getFile("fill1").getName();
            
            studentPojo pojo =new studentPojo();
            stuResumePojo pojor = new stuResumePojo();
            studentRegisterDao dao= new studentRegisterDao();
            studentResumeDao daor= new studentResumeDao();
            
            pojo.setStu_id(Integer.parseInt(multipartRequest.getParameter("txtid").toString()));
            pojo.setStu_name(multipartRequest.getParameter("txtname").toString());
            pojo.setPassword(multipartRequest.getParameter("txtpassword").toString());
            pojo.setAddress(multipartRequest.getParameter("txtaddress").toString());
            pojo.setPhoto(name);
            
            pojor.setStu_id(Integer.parseInt(multipartRequest.getParameter("txtid").toString()));
            pojor.setCgpa(Float.parseFloat(multipartRequest.getParameter("txtcgpa").toString()));
            pojor.setAssessment(multipartRequest.getParameter("txtassessments").toString());
            pojor.setSkills(multipartRequest.getParameter("txtskills").toString());
            pojor.setEdu_details(multipartRequest.getParameter("txtedudetails").toString());
            int i=dao.update(pojo);
            int j=daor.update(pojor);
            if ((i+j)>=2) {
                out.println("<script type='text/javascript'> alert('Profile Updated !!! ');window.location.href='UserProfile.jsp';</script>");
            } else {
                out.println("<script type='text/javascript'> alert('Profile not Updated !!! ');window.location.href='UserProfile.jsp';</script>");
            }
        %>
    </body>
</html>
