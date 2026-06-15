<%-- 
    Document   : updatestudent
    Created on : Jun 11, 2026, 2:42:32 PM
    Author     : VU VAN HUY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update student info</title>
    </head>
    <body>
            <center><h1>Update student info</h1></center>
    <form action="update" method="post">
        <table border="0">
            <tbody>
                <tr>
                    <td>Student Id</td>
                    <td><input type="text" name="txtId" id="txtId" value="${stdX.id}" readonly/></td>
                </tr>
                <tr>
                    <td>Student name</td>
                    <td><input type="text" name="txtName" id="txtName" value="${stdX.name}" /></td>
                </tr>
                <tr>
                    <td>Student gender</td>
                    <td>
                        <input type="radio" name="rbGender" id="rbMale" value="rbMale" ${stdX.gender=="Nam"?"checked":""} >Male
                        <input type="radio" name="rbGender" id="rbFemale" value="rbFemale" ${stdX.gender=="Nữ"?"checked":""}>Female
                    </td>
                </tr>
                <tr>
                    <td>Student dob</td>
                    <td><input type="text" name="txtDob" id="txtDob" value="${stdX.dob}" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Update student" id="btnUpdate" /></td>
                </tr>
        </table>
    </form>
    </body>
</html>
