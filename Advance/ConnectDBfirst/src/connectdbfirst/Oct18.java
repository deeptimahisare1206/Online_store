package connectdbfirst;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class Oct18 {

    public static void main(String args[]) {
        Scanner sc = new Scanner(System.in);
        String name;
        int id;
        System.out.println("Enter the name");
        name = sc.nextLine();
        System.out.println("Enter the id");
        id = sc.nextInt();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Driver open3");
            Connection cons = DriverManager.getConnection("jdbc:mysql://localhost:3306/education", "root", "");
            System.out.println("Connection open3");
//            PreparedStatement pst = cons.prepareStatement("insert into patient(Patient_id,Patient_fname) values(?,?)");
//            pst.setInt(1, id);
//            pst.setString(2, name);
            PreparedStatement pst = cons.prepareStatement("update patient set patient_fname= ?where patient_id = ?");
            pst.setInt(2, id);
            pst.setString(1, name);
            int i = pst.executeUpdate();
            if (i > 0) {
                System.out.println("Record Inserted");
                PreparedStatement pst1 = cons.prepareStatement("select* from patient");
                ResultSet rs = pst1.executeQuery();
                if (rs.isBeforeFirst()) {
                    while (rs.next()) {
                        System.out.println(rs.getInt(1) + " " + rs.getNString(2));
                    }
                }
            } 
        } catch (Exception ex) {
        }
    }

}
