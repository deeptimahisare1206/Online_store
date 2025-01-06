/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package jsonfile;

import java.io.FileReader;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;

public class Jsonreader {

    @SuppressWarnings("unchecked")
    public static void main(String args[]) throws org.json.simple.parser.ParseException {

        JSONParser jsonParser = new JSONParser();
        try (FileReader reader = new FileReader("demo.json")) {

            Object obj = jsonParser.parse(reader);

            JSONArray employeeList = (JSONArray)obj;
            System.out.println(employeeList);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
}
