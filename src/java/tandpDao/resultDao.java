/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tandpDao;

import DBconnection.DBconnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import tandpPojo.resultPojo;

/**
 *
 * @author SAJAL-PC
 */
public class resultDao {
    public ArrayList<tandpPojo.resultPojo> FetchData()
    {
        ArrayList<resultPojo> plist= new ArrayList<>();
        try
        {
            Connection con = DBconnection.getconnection();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from result");
            while(rs.next())
            {
                resultPojo obj= new resultPojo();
                obj.setTest_id(rs.getInt(2));
                obj.setStu_id(rs.getInt(1));
                obj.setJob_profile(rs.getString(3));
                obj.setYear(rs.getString(4));
                plist.add(obj);
            }
        } catch (SQLException ex) {
            Logger.getLogger(resultDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return plist;
    }
}
