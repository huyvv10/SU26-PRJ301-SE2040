<%-- 
    Document   : firstjsp
    Created on : May 25, 2026, 3:57:08 PM
    Author     : VU VAN HUY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello JSP</title>
    </head>
    <body>
    <center><h1>Hello JSP World!</h1></center>
        <%
            int n=100;
            for (int i=0; i<n; i++){
        %>
    <p><h3><%=i+1%>. Anh yêu em</h3></p>
    <%
        }
    %>
</body>
</html>
