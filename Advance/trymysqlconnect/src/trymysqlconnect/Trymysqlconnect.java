/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package trymysqlconnect;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author ASUS
 */
public class Trymysqlconnect {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        System.out.println("database");
        Connection cns = DriverManager.getConnection("jdbc:mysql://localhost:4406/hospital", "root", "12345");
        System.out.println("connected");
        }
        catch(Exception ex){
        }
    }

    
}
