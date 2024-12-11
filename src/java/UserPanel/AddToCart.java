/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package UserPanel;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author deept
 */
@WebServlet(name = "AddToCart", urlPatterns = {"/AddToCart"})
public class AddToCart extends HttpServlet {

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
            out.println("<title>Servlet AddToCart</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddToCart at " + request.getContextPath() + "</h1>");
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
//        PrintWriter pt = response.getWriter();
////pt.print("Donnee");
//        int bookId  = Integer.parseInt(request.getParameter("bid"));
//        String booktitle = request.getParameter("bname");
////        int bookId = Integer.parseInt(request.getParameter("bookId"));
////        int quantity = Integer.parseInt(request.getParameter("qy"));
//String quantity = request.getParameter("qy");
////        pt.print(booktitle);
//
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//
//            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
//            String sql = "INSERT INTO carts (book_title, book_id, quantity) VALUES (?, ?, ?) "
//                    + "ON DUPLICATE KEY UPDATE quantity = quantity+?";
//            PreparedStatement pstmt = conn.prepareStatement(sql);
//            pstmt.setString(1, booktitle);
//            pstmt.setInt(2, bookId);
//            pstmt.setString(3, quantity);
//            pstmt.setString(4, quantity);
//
//            pstmt.executeUpdate();
//
//            pstmt.close();
//            conn.close();
//        } catch (Exception e) {
//            pt.print(e.getMessage());
//        }
//
////        response.sendRedirect("C.jsp");

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
    HttpSession session = request.getSession(false);

    String ucard = (String) session.getAttribute("userid");
    int bookId = Integer.parseInt(request.getParameter("bid"));
    int quantity = Integer.parseInt(request.getParameter("qy"));

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");

        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
        
        // Updated SQL statement
        String sql = "INSERT INTO cart (`User_id`, `BookId`, `quantity`) VALUES (?, ?, ?) "
                   + "ON DUPLICATE KEY UPDATE `quantity` = `quantity` + ?";

        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, ucard);
        pstmt.setInt(2, bookId);
        pstmt.setInt(3, quantity);
        pstmt.setInt(4, quantity); // This is the quantity to add if the book already exists

        int i = pstmt.executeUpdate();
        if (i > 0) {
            
            response.sendRedirect("bookDetails.jsp?added=done");
            
        } else {
            pt.print("Not done!!!!");
        }

        pstmt.close();
        conn.close();
    } catch (Exception e) {
        pt.print(e.getMessage());
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
