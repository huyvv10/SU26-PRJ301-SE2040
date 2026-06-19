<%-- 
    Document   : showproducts
    Created on : Jun 18, 2026, 1:39:47 PM
    Author     : VU VAN HUY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List products</title>
    </head>
    <body>
    <center><h1>List products!</h1></center>
    <form action="showproducts" method="post">
        <table border="0">
            <tr>
                <td>Search name</td>
                <td><input type="text" name="txtKw" id="txtKw" /></td>
                <td><input type="submit" value="Search" id="btnSearch"></td>
            </tr>
            <tr>
                <td>Category</td>
                <td>
                    <select name="cbCat" id="cbCat">
                        <option value="all" id="cbAll">---All---</option>
                        <c:forEach var="c" items="${catList}">
                        <option value="${c.catId}" id="${c.catId}">${c.catName}</option>
                        </c:forEach>
                    </select>
                </td>
                <td><input type="submit" value="Add" id="btnAdd"></td>
            </tr>            
            </tbody>
        </table>
        <br />
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Import Date</th>
                    <th>Category</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="p" items="${prdList}" >
                <tr>
                    <td>${p.id}</td>
                    <td>${p.name}</td>
                    <td>${p.qty}</td>
                    <td>${p.price}</td>
                    <td>${p.importDate}</td>
                    <td>${p.catId}</td>
                    <td>
                        <a href="edit?pid=${p.id}">Edit |
                        <a href="delete?pid=${p.id}">Delete
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>


    </form>
</body>
</html>
