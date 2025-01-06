
import java.sql.*;

public class viewdatabase {

    public static void main(String args[]) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Driver open2");
            Connection cons = DriverManager.getConnection("jdbc:mysql://localhost:3306/education", "root", "");
            System.out.println("Connection open2");
            Statement st = cons.createStatement();
            ResultSet rs = st.executeQuery("select* from patient");
            if (rs.isBeforeFirst()) {
                while (rs.next()) {
                    System.out.println(rs.getInt(1) + " " + rs.getString(2)+ " " + rs.getString(3));
                }
            } else {
                System.out.println("No record found...");
            }
        } catch (Exception ex) {
        }
    }
}
