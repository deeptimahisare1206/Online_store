package AdminPanel;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
public class bookUpdate extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet bookUpdate</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet bookUpdate at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter pt = response.getWriter();
        response.setContentType("text/html");
        int Bd = Integer.parseInt(request.getParameter("id"));
        String bn = request.getParameter("txt1");
        String an = request.getParameter("txt2");
        int mrp = Integer.parseInt(request.getParameter("txt3"));
        int qty = Integer.parseInt(request.getParameter("txt4"));
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinestore", "root", "");
//            Statement stmt=con.createStatement();

            PreparedStatement st = con.prepareStatement("update books set BookName=?, AuthorName=? ,Price=? ,Quantity=? where BookId=?");
//            st.setInt(1, Bd);

            st.setString(1, bn);
            st.setString(2, an);
            st.setInt(3, mrp);
            st.setInt(4, qty);
            st.setInt(5,Bd);
            int i=st.executeUpdate();
            if (i > 0) {
                JOptionPane.showMessageDialog(null, "Your Record is Updated Successfully!");
                response.sendRedirect("../OnlineStore/AdminSide/bookManage.jsp");
            }
        } catch (Exception ex) {
//            pt.print(ex.getMessage());
        }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
