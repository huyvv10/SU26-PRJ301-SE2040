<%-- 
    Document   : showstudent
    Created on : Jun 4, 2026, 2:46:53 PM
    Author     : VU VAN HUY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show student</title>
    </head>
    <body>
    <center><h1>Student list!</h1></center>
    <p><a href="addstudent.jsp">Add new Student</a></p>
    <table border="1">
        <thead>
            <tr>
                <th>N0</th>
                <th>ID</th>
                <th>Name</th>
                <th>DOB</th>
                <th>Gender</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="i" items="${stdList}" varStatus="no">
            <tr>
                <td>${no.count}</td>
                <td>${i.id}</td>
                <td>${i.name}</td>
                <td>${i.dob}</td>
                <td>${i.gender}</td>
                <td>
                    <a href="#">Update</a> | 
                    <a href="#">Delete</a>  
                </td>
            </tr>
            </c:forEach>
        </tbody>
    </table>

    </body>
</html>
