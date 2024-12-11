/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package AdminPanel;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author deept
 */
@MultipartConfig
@WebServlet(name = "updateBookImage", urlPatterns = {"/updateBookImage"})
public class updateBookImage extends HttpServlet {

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
            out.println("<title>Servlet updateBookImage</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updateBookImage at " + request.getContextPath() + "</h1>");
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
        int Bd = Integer.parseInt(request.getParameter("bid"));
//        pt.print(Bd);

        Part file = request.getPart("img");
        String filename = file.getSubmittedFileName();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_store", "root", "root");

            String drive_path = "E:/2. OnlineStore/web/booksimg/" + filename;

            FileOutputStream fos = new FileOutputStream(drive_path);
            InputStream is = file.getInputStream();
            byte[] imageData = new byte[is.available()];
            is.read(imageData);
            fos.write(imageData);

            PreparedStatement pst = con.prepareStatement("update books set Book_Pic=? where BookId=?");
            pst.setString(1, filename);
            pst.setInt(2, Bd);
            int i = pst.executeUpdate();
//                if(i==1){
////             
//////               session.setAttribute("image", filename+"Uplaod Success");
////            response.sendRedirect("../OnlineStore/AdminSide/addBook.jsp");
//
//            }
            if (i > 0) {
                String path = getServletContext().getRealPath("") + "booksimg";
                file.write(path + File.separator + filename);
//                    JOptionPane.showMessageDialog(null, "Registration Successfull.👍🏼");
                response.sendRedirect("../OnlineStore/AdminSide/bookManage.jsp");
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
