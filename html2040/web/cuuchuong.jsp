<%-- 
    Document   : cuuchuong
    Created on : May 25, 2026, 4:56:26 PM
    Author     : VU VAN HUY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>CỬU CHƯƠNG!</h1>
        <form action="cuuchuong.jsp" method="post">
            <input type="text" name="num"><br>
            <input type="submit" value="Submit">
        </form>
        <br>
        <%
        int n;
        String num = request.getParameter("num");
        if(num!=null && !num.isEmpty()){
            try {
                n = Integer.parseInt(num);
        %>
        <table border="0px">
            <%
            for (int i=0; i<=10; i++){
            %>
            <tr>
                <td><%=n%></td>
                <td>x</td>
                <td><%=i%></td>
                <td>=</td>
                <td><%=n*i%></td>
            </tr>
            <%}%>
        </table> 
        <%  
          } catch (NumberFormatException e) {
        %>
        <p>Đồ điên. Phải nhập số.</p>
        <%}}%>   
    </body>
</html>
