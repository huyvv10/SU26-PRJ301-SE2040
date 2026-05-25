<%-- 
    Document   : listjsp
    Created on : May 25, 2026, 4:06:35 PM
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
        <h1>Hello World!</h1>
        <form action="listjsp.jsp" method="post">
            <input type="text" name="num"><br>
            <input type="submit" value="Submit">
        </form>
        <br>
        <%!
        int n=0;
        char toChar(int i){return (char)(i+65);}
        %>
        <%
        String num = request.getParameter("num");
        if(num!=null && !num.isEmpty()){
            try {
                n = Integer.parseInt(num);
       %>
         <table border="1px">
             <tr>
                 <th>STT</th>
                 <th>Họ và Tên</th>
                 <th>Ghi chú</th>
             </tr>
             <%
             for (int i=0; i<n; i++){
             %>
             <tr>
                 <td><%=i+1%></td>
                 <td>Vũ Văn <%=toChar(i)%></td>
                 <td></td>
             </tr>
             <%}%>
         </table> 
         
   <%  
              } catch (NumberFormatException e) {
            %>
            <p>Đồ điên. Phải nhập số.</p>
            <%
        }
   
        }
     %>   

       
    </body>
</html>
