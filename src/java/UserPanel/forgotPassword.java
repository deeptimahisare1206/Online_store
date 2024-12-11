/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package UserPanel;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.sql.*;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
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
@WebServlet(name = "forgotPassword", urlPatterns = {"/forgotPassword"})
public class forgotPassword extends HttpServlet {

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
            out.println("<title>Servlet forgotPassword</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet forgotPassword at " + request.getContextPath() + "</h1>");
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

//          HttpSession sess = request.getSession();
        PrintWriter pw = response.getWriter();
        response.setContentType("text/html"); 
        String email = request.getParameter("email");
//        String msg = "Your Password is 1234";
        final String username = "pro.deepwork@gmail.com";//my mail
        final String password = "tyyo aaix aspn menb";//my password
        Properties props = new Properties();
        props.setProperty("mail.smtp.auth", "true");
        props.setProperty("mail.smtp.starttls.enable", "true");
        props.setProperty("mail.smtp.host", "smtp.gmail.com");
        props.setProperty("mail.smtp.port", "587");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

//        
//
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
            PreparedStatement pst = con.prepareStatement("select * from user_login where Email=?");
            pst.setString(1, email);
            ResultSet rs = pst.executeQuery();
           
            if (rs.next()) {
                
                Message messsage = new MimeMessage(session);
                messsage.setFrom(new InternetAddress(email));
                messsage.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
                MimeBodyPart textPart = new MimeBodyPart();
                Multipart multipart = new MimeMultipart();
                String final_Text = "Email: " + email + " Message: " + rs.getString("Password") + "  ";
                textPart.setText(final_Text);
//            messsage.setSubject(subject);
                multipart.addBodyPart(textPart);
                messsage.setContent(multipart);
                messsage.setSubject("Know the Password");
                
                Transport.send(messsage);
                response.sendRedirect("Ulogin.jsp");
//                pw.println("<center> <h2> Email sent Successfully.</h2>");
//                pw.println("Thank You" + rs.getString("Username") + ", your message has been submitted to us. </center>");
                
            }
            else{
            response.sendRedirect("forgotPass.jsp?mail=wrong");
            }
        } catch (Exception ex) {
            pw.print(ex.getMessage());
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
