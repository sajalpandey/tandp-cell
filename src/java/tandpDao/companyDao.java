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
import tandpPojo.companyPojo;

/**
 *
 * @author SAJAL-PC
 */
public class companyDao {
    public ArrayList<tandpPojo.companyPojo> FetchData()
    {
        ArrayList<companyPojo> plist = new ArrayList <>();
        try
        {
            Connection con = DBconnection.getconnection();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from company");
            while(rs.next())
            {
                companyPojo obj = new companyPojo();
                obj.setCom_id(rs.getInt(1));
                obj.setCom_name(rs.getString(2));
                obj.setLocation(rs.getString(3));
                obj.setPay(rs.getInt(4));
                obj.setEmail(rs.getString(5));
                obj.setContact(rs.getString(6));
                obj.setJob_profile(rs.getString(7));
                obj.setCgpa(rs.getString(8));
                obj.setVisit_date(rs.getString(9));
                plist.add(obj);
            }
        }
        catch (SQLException ex) {
            Logger.getLogger(companyDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return plist;  
    }
    
}
