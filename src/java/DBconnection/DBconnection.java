/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBconnection;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author SAJAL-PC
 */
public class DBconnection {
     public static Connection getconnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tandp", "root", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
}
