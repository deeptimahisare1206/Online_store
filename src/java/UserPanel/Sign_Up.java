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
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

/**
 *
 * @author ASUS
 */
@MultipartConfig
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
        String state = request.getParameter("state");
        int pin = Integer.parseInt(request.getParameter("pin"));
        long num = Long.parseLong(request.getParameter("phone"));
        Part file = request.getPart("pic");
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

            PreparedStatement pst = con.prepareStatement("select * from user_login where Username=?");
            pst.setString(1, user);
            ResultSet rs = pst.executeQuery();
            if (rs.isBeforeFirst()) {
                response.sendRedirect("Registration.jsp?invalid=user");
//                pt.print("<html><body><h1 style='color:green'>**Username already exist..</h1></body></html>");

            } else {
                PreparedStatement pst1 = con.prepareStatement("insert into user_login (Name, Address, Mobile, Email,UserName, Password,image, pincode, state ) values(?,?,?,?,?,?,?,?,?)");
                pst1.setString(1, fname);
                pst1.setString(2, add);
                pst1.setLong(3, num);
                pst1.setString(4, email);
                pst1.setString(5, user);
                pst1.setString(6, pass);
                pst1.setString(7, filename);
                pst1.setInt(8, pin);
                pst1.setString(9, state);

                int i = pst1.executeUpdate();
//                if(i==1){
////             
//////               session.setAttribute("image", filename+"Uplaod Success");
////            response.sendRedirect("../OnlineStore/AdminSide/addBook.jsp");
//
//            }
                if (i > 0) {
                    String path = getServletContext().getRealPath("") + "userpic";
                    file.write(path + File.separator + filename);
//                    JOptionPane.showMessageDialog(null, "Registration Successfull.👍🏼");
                    response.sendRedirect("Ulogin.jsp?register=success");
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
