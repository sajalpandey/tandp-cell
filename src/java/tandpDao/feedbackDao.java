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
import tandpPojo.feedbackPojo;


/**
 *
 * @author SAJAL-PC
 */
public class feedbackDao {
    public ArrayList<tandpPojo.feedbackPojo> FetchData()
    {
        ArrayList<feedbackPojo> plist= new ArrayList<>();
        try
        {
            Connection con = DBconnection.getconnection();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from feedback");
            while(rs.next())
            {
                feedbackPojo obj= new feedbackPojo();
                obj.setFeed_id(rs.getInt(1));
                obj.setTest_id(rs.getInt(2));
                obj.setStu_id(rs.getInt(3));
                obj.setLocation(rs.getString(4));
                obj.setSkills(rs.getString(5));
                obj.setExperiance(rs.getString(6));
                plist.add(obj);
            }
        } catch (SQLException ex) {
            Logger.getLogger(feedbackDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return plist;
    }
    
    public int insert(tandpPojo.feedbackPojo pojo) {
        int i = 0;
        try {
            Connection con = DBconnection.getconnection();
            Statement stmt = con.createStatement();
            i = stmt.executeUpdate("insert into feedback (test_id,stu_id,location,skill,experience) values('" + pojo.getTest_id() + "','" + pojo.getStu_id() + "','" + pojo.getLocation() + "','"+pojo.getSkills()+"','" + pojo.getExperiance()+"')");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        if (i > 0) 
        {
            return i;
        } 
        else 
        {
            return 0;
        }
    }
}
