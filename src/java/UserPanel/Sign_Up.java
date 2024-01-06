/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package UserPanel;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author ASUS
 */
public class Sign_Up extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Sign_Up</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Sign_Up at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter pt = response.getWriter();
        response.setContentType("text/html");
        String fname = request.getParameter("name");
        String add = request.getParameter("add");
        String email = request.getParameter("email");
        String user = request.getParameter("uname");
        String pass = request.getParameter("password");
        long num = Long.parseLong(request.getParameter("phone"));

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinestore", "root", "");
            PreparedStatement pst = con.prepareStatement("select * from ulogin where username=?");
            pst.setString(1, user);
            ResultSet rs = pst.executeQuery();
            if (rs.isBeforeFirst()) {
                response.sendRedirect("../OnlineStore/userSide/Registration.html");
                pt.print("**Username already exist..");

            } else {
                PreparedStatement pst1 = con.prepareStatement("insert into ulogin values(?,?,?,?,?,?)");
                pst1.setString(1, fname);
                pst1.setString(2, add);
                pst1.setLong(3, num);
                pst1.setString(4, email);
                pst1.setString(5, user);
                pst1.setString(6, pass);
                int i = pst1.executeUpdate();
                if (i > 0) {
                    JOptionPane.showMessageDialog(null, "Registration Successfull.👍🏼");
                    response.sendRedirect("./userSide/Ulogin.jsp");
                }

            }
        } catch (Exception ex) {
            pt.print(ex.getMessage());
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
