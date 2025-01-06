import java.sql.*;
import java.util.*;
public class StatementUpdate {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String name;
        int id;
        System.out.println("Enter the name");
        name = sc.nextLine();
        System.out.println("Enter the id");
        id = sc.nextInt();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Driver open1");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/education", "root", "");
            System.out.println("Database connect1");
            Statement st = con.createStatement();
            var i = st.executeUpdate("insert into patient(Patient_id,Patient_fname) values('"+id+"','"+name+"')");
            if (i > 0) {
                System.out.println("Data Inserted.");
            } else {
                System.out.println("Data Not Inserted");
            }

        } catch (Exception ex) {
        }
    }
}
