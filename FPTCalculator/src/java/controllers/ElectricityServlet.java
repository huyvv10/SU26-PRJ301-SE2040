/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author VU VAN HUY
 */
public class ElectricityServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String consumNum = request.getParameter("num");
        String err = "";
        boolean flag=false;
        double rs=0;
        if (consumNum.isEmpty()){
            err+="Please input number of electricity consum.";
        } else {
            try {
                int n = Integer.parseInt(consumNum);
                if (n<0){
                    flag=false;
                    err+="Consume number must be greater than zero.";
                } else {
                    flag=true;
                    if (n <= 50)
                        rs=n*1984;
                    else if (n<=100)
                        rs=50*1984+(n-50)*2050;
                    else if (n<=200)
                        rs=50*1984+50*2050+(n-100)*2380;
                    else if (n<=300)
                        rs=50*1984+50*2050+100*2380+(n-200)*2998;
                    else if (n<=400)
                        rs=50*1984+50*2050+100*2380+100*2998+(n-300)*3350;
                    else 
                        rs=50*1984+50*2050+100*2380+100*2998+100*3350+(n-400)*3460;
                }
            } catch (Exception e) {
            
            }
        }
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ElectricityServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            if (flag){
                out.println("<h1>Electricity fee for " + consumNum + "Kwh is: "+ rs+ " (vnd)</h1>");
                out.println("<h1>Vat is "+rs*0.1+ " (vnd)</h1>");
                out.println("<h1>Total cost for " + consumNum + "Kwh is: "+ rs*1.1+ " (vnd)</h1>");
            }else 
                out.println(err);
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
//        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
