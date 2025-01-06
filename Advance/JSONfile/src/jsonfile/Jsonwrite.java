/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package jsonfile;

import java.io.FileNotFoundException;
import java.io.FileWriter;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 *
 * @author ASUS
 */
public class Jsonwrite {

    @SuppressWarnings("unchecked")
    public static void main(String args[]) throws FileNotFoundException {
        JSONObject employeeDetails = new JSONObject();
        employeeDetails.put("firstName", "Deepu");
        employeeDetails.put("lastName", "Mahi");
        employeeDetails.put("website", "mahideepu.com");

        JSONObject employeeObject = new JSONObject();
        employeeObject.put("employee", employeeDetails);

        JSONObject employeeDetails2 = new JSONObject();
        employeeDetails2.put("firstName", "Netik");
        employeeDetails2.put("lastName", "Mahi");
        employeeDetails2.put("website", "babubhaiya.com");

        JSONObject employeeObject2 = new JSONObject();
        employeeObject2.put("employee", employeeDetails2);

        JSONArray employeeList = new JSONArray();
        employeeList.add(employeeObject);
        employeeList.add(employeeObject2);

        try {
            FileWriter file=new FileWriter("E:/New folder/Advance/JSONfile/src/jsonfile/demo1.json");
            file.write(employeeList.toJSONString());
            file.flush();
        } catch (Exception ex) {
        }

    }

}
