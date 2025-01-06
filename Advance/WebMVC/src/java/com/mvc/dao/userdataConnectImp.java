/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mvc.dao;

import com.mvc.dto.userinfo;
import java.sql.*;

/**
 *
 * @author ASUS
 */
public class userdataConnectImp implements userinterface {

    @Override
    public boolean validate(userinfo ref) {
        boolean b = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MVC", "root", "");
            PreparedStatement pst=con.prepareStatement("select * from userlogin where user=? and password=?");
            pst.setString(1, ref.getUser());
            pst.setString(2, ref.getPassword());
            ResultSet rs=pst.executeQuery();
            if(rs.isBeforeFirst()){
            return b=true;
            }
        } catch (Exception ex) {
        }
        return b;

    }
}
