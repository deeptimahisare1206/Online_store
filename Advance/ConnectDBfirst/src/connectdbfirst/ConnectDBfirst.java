package connectdbfirst;
import java.sql.*;
public class ConnectDBfirst {
    public static void main(String[] args) {
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        System.out.println("Driver open");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/education", "root", "");
        System.out.println("Database connect");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select* from patient");
//        ResultSet rs = st.executeQuery("select* from patient where Patient_id=6");
        if(rs.isBeforeFirst()){
        while( rs.next()){
            System.out.println("Student id: "+ rs.getInt(1));
            System.out.println("name: " + rs.getString(2));
            System.out.println("class" +rs.getString(3));
        }
        }
        else{
            System.out.println("Record not found..");
        }
        
        }
        catch(Exception ex){
        }
    }
    
}
