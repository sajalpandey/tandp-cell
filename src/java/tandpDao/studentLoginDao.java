/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tandpDao;

import java.sql.*;
import javax.sql.*;

import DBconnection.DBconnection;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author SAJAL-PC
 */
public class studentLoginDao {

    Connection con = DBconnection.getconnection();

    public String authenticateUser(String email, String password) {
        String emailDB = "";
        String passwordDB = "";
        String name="";
        Statement stmt = null;
        ResultSet rs = null;
        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery("select * from student where email='"+email+"' and passcode='"+password+"'");
            rs.next();
            emailDB = rs.getString(4);
            passwordDB = rs.getString(3);
            name=rs.getString(2);
        } catch (SQLException ex) {
            Logger.getLogger(studentLoginDao.class.getName()).log(Level.SEVERE, null, ex);

        }
        if (passwordDB.equals(password) && emailDB.equals(email)) {
            return emailDB;
        } else {
            return "false";
        }
    }
}
