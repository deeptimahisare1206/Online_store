package practice;

import java.sql.*;
import java.sql.Connection;
import java.sql.Driver;
import java.util.*;
import java.sql.PreparedStatement;

public class Practice {

    public static void main(String[] args) {
        int id;
        String name, branch;
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the Name: ");
        name = sc.nextLine();
        System.out.println("Enter the branch");
        branch = sc.nextLine();
        System.out.println("Enter the id: ");
        id = sc.nextInt();
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection cons = DriverManager.getConnection("jdbc:mysql://localhost:3306/education", "root", "");
            System.out.println("Done");
            PreparedStatement ps = cons.prepareStatement("insert into student(id,name,branch) values(?,?,?)");
            ps.setInt(1, id);
            ps.setString(2, name);
            ps.setString(3, branch);
            int i=ps.executeUpdate();
            if(i>0){
                System.out.println("Inserted.");
                PreparedStatement pst=cons.prepareStatement("select * from student ");
                ResultSet rs=pst.executeQuery();
                if(rs.isBeforeFirst()){
                while(rs.next()){
                    System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getString(3));
                }
                }
            }
        } 
        catch (Exception ex) {
        }

    }

}
