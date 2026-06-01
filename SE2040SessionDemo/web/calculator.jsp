<%-- 
    Document   : calculator
    Created on : Jun 1, 2026, 5:03:39 PM
    Author     : VU VAN HUY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
    </head>
    <body>
        <h1>Calculator Session</h1>
        <form action="calculator" method="Post">
            <table border="0">
                <tr>
                    <td>Number 1</td>
                    <td><input type="text" name="num1" id="txtNum1" /></td>
                </tr>
                <tr>
                    <td>Number 2</td>
                    <td><input type="text" name="num2" id="txtNum2" /></td>
                </tr>
                <tr>
                    <td>Operator</td>
                    <td>
                        <input type="radio" name="op" value="+" checked id="rbSum" />Sum<br>
                        <input type="radio" name="op" value="-" id="rbSub" />Subtract<br>
                        <input type="radio" name="op" value="*" id="rbProd"/>Product<br>
                        <input type="radio" name="op" value="/" id="rbQuo"/>Quotient
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Calculate" id="btnCal"></td>
                </tr>
            </table>


        </form>
        <hr>
        <table border="1">
            <thead>
                <tr>
                    <th>Number 1</th>
                    <th>Operator</th>
                    <th>Number 2</th>
                    <th></th>
                    <th>Results</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="i" items="${listDataSv}">
                <tr>
                    <td>${i.n1}</td>
                    <td>${i.op}</td>
                    <td>${i.n2}</td>
                    <td>=</td>
                    <td>${i.rs}</td>
                </tr>
                </c:forEach>
            </tbody>
        </table>    
    </body>
</html>
