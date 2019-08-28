<%-- 
    Document   : DisplayDate
    Created on : Mar 26, 2019, 7:37:19 PM
    Author     : SAJAL-PC
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <%
            long millis=System.currentTimeMillis();
            millis=millis-86400000;
            java.sql.Date date= new java.sql.Date(millis);
            out.println(date);
        %>
        
        <table class="table table-hover">
                                            <thead>
                                            <thead>
                                            <th>Feedback Id</th>
                                            <th>Company Name</th>
                                            <th>Job Profile</th>
                                            <th>Skills</th>
                                            <th>Experience</th>
                                            </thead>
                                            </thead>
                                            <%
                                                feedbackDao obj1 = new feedbackDao();
                                                ArrayList<tandpPojo.feedbackPojo> plist = obj1.FetchData();
                                                for(feedbackPojo d:plist)
                                                {
                                            %>
                                            <tbody>
                                                <tr>
                                                    <td><%=d.getFeed_id()%></td>
                                                    <%
                                                        Connection con = DBconnection.DBconnection.getconnection();
                                                        Statement stmt3=con.createStatement();
                                                        ResultSet rs3=stmt3.executeQuery("select com_name from company where com_id IN(select com_id from test where test_id='"+d.getTest_id()+"')");
                                                        rs3.next();
                                                    %>
                                                    <td><%=rs3.getString(1)%></td>
                                                    <%
                                                        Statement stmt2=con.createStatement();
                                                        ResultSet rs2=stmt2.executeQuery("select jobprofile from result where test_id='"+d.getTest_id()+"' and stu_id='"+d.getStu_id()+"'");
                                                        rs2.next();
                                                    %>
                                                    <td><%=rs2.getString(1)%></td>
                                                    <td><%=d.getSkills()%></td>
                                                    <td><%=d.getExperiance()%></td>
                                                </tr>
                                            
                                            </tbody>
                                            <%}%>
                                        </table>
    
</html>
