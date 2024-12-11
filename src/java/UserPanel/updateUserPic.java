/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package UserPanel;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
@WebServlet(name = "updateUserPic", urlPatterns = {"/updateUserPic"})
public class updateUserPic extends HttpServlet {

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
            out.println("<title>Servlet updateUserPic</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updateUserPic at " + request.getContextPath() + "</h1>");
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
               String ud = request.getParameter("uid");
        Part file = request.getPart("img");
        String filename = file.getSubmittedFileName();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_store", "root", "root");

            String drive_path = "E:/2. OnlineStore/web/userpic/" + filename;

            FileOutputStream fos = new FileOutputStream(drive_path);
            InputStream is = file.getInputStream();
            byte[] imageData = new byte[is.available()];
            is.read(imageData);
            fos.write(imageData);

            PreparedStatement pst = con.prepareStatement("update user_login set image=? where User_id=?");
            pst.setString(1, filename);
            pst.setString(2, ud);
            int i = pst.executeUpdate();
//                
            if (i > 0) {
                String path = getServletContext().getRealPath("") + "userpic";
                file.write(path + File.separator + filename);
//                    JOptionPane.showMessageDialog(null, "Registration Successfull.👍🏼");
                response.sendRedirect("userProfile.jsp");
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
