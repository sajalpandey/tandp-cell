<%-- 
    Document   : login
    Created on : Mar 3, 2019, 2:49:58 PM
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
                            
        <div class="login">
            <center><a href="registration.jsp"><button class="button1"> Register</button></a>
            <%if(session.getAttribute("user")==null){%>
                <button class="button1" Onclick="document.getElementById('id01').style.display = 'block';">Login
                </button></center>
            <div id="id01" class="modal">
                
                <form class="modal-content animate" action="getLogin.jsp" method="post">
                    <div class="imgcontainer">
                        <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                        <img src="images/img_avatar.png" alt="Avatar" class="avatar">
                    </div>

                    <div class="container">
                        
                        <label for="StudentId"><b>Email</b></label>
                        <input type="text" placeholder="Enter your email" name="stuemail" required>

                        <label for="password"><b>Password</b></label>
                        <input type="password" placeholder="Enter Password" name="password" required>
                        <button type="submit">Login</button>
                        <label>
                            <input type="checkbox" checked="unchecked" name="remember"> Remember me
                        </label>
                    </div>

                    <div class="container" style="background-color:#f1f1f1">
                        <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn">Cancel</button>
                        <span class="psw">Forgot <a href="#">password?</a></span>
                    </div>
                </form>
            </div>

            <script>
                // Get the modal
                
                var modal = document.getElementById('id01');
                
                // When the user clicks anywhere outside of the modal, close it
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            </script>
            <%}else{%>
            <a href="Dashboard.jsp"><img src="images/profileicon.png" style="width:35px;height:32px;"></a>
            <%}    %>

        </div>
    </body>
</html>
