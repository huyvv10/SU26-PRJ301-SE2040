<%-- 
    Document   : chunhat
    Created on : May 25, 2026, 5:16:16 PM
    Author     : VU VAN HUY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hinh chu nhat</title>
    </head>
    <body>
        <h1>Tính Chu Vi - Diện tích Hình chữ nhật!</h1>
        <form action="chunhat.jsp" method="post">
            <table>
                <tr>
                    <td>Chiều dài (cm)</td>
                    <td><input type="text" name="l"</td>
                </tr>
                <tr>
                    <td>Chiều rộng (cm)</td>
                    <td><input type="text" name="w"</td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="radio" name="method" value="cv" checked>Chu vi<br>
                        <input type="radio" name="method" value="dt">Diện tích
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Tính"</td>
                </tr>
            </table>            
        </form>
        <%!
            double tinhChuVi(double d, double r){return (d+r)*2;}
            double tinhDienTich(double d, double r){return (d*r);}            
            double d, r, rs=0.0;
        %>
        <%
            String dai = request.getParameter("l");
            String rong = request.getParameter("w");
            String method = request.getParameter("method");
            if (dai!=null && rong!=null){
                try{
                    d = Double.parseDouble(dai);
                    r = Double.parseDouble(rong);
                    if (method.equals("cv")){
            %>
            <p>Chu vi của hình chữ nhật là: <%=tinhChuVi(d,r)%></p>    
            <%
            }else {
            %>    
            <p>Diện tích của hình chữ nhật là: <%=tinhDienTich(d,r)%></p>    
            <%
                }
                } catch (NumberFormatException e){
                }
            }
        %>
        
    </body>
</html>
