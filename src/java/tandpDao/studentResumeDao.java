/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tandpDao;
import java.sql.*;
import javax.sql.*;

import DBconnection.DBconnection;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import tandpPojo.stuResumePojo;
/**
 *
 * @author SAJAL-PC
 */
public class studentResumeDao {
    public ArrayList<tandpPojo.stuResumePojo> FetchData()
    {
        ArrayList<stuResumePojo> plist = new ArrayList<>();
        try{
            Connection con = DBconnection.getconnection();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from stu_resume");
            while(rs.next())
            {
                stuResumePojo obj=new stuResumePojo();
                obj.setEdu_details(rs.getString(2));
                obj.setAssessment(rs.getString(3));
                obj.setSkills(rs.getString(4));
                obj.setStu_id(rs.getInt(5));
                plist.add(obj);
            }
        } catch (SQLException ex) {
            Logger.getLogger(studentResumeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return plist;
    }
    public int insert(tandpPojo.stuResumePojo pojo)
    {
        Connection con = DBconnection.getconnection();
        int i=0;
        Statement stmt = null;
        try {
            stmt = con.createStatement();
        
        i = stmt.executeUpdate("insert into stu_resume(stu_id,edu_details,assessments,skills) values('"+pojo.getStu_id()+"','','','')");
        } catch (SQLException ex) {
            Logger.getLogger(studentResumeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return i;
    }
    public int update(tandpPojo.stuResumePojo pojo)
    {
        int i = 0;
        try {
            Connection con = DBconnection.getconnection();
            Statement stmt = con.createStatement();
            i=stmt.executeUpdate("update stu_resume set edu_details='"+pojo.getEdu_details()+"',assesments='"+pojo.getAssessment()+"',skills='"+pojo.getSkills()+"' , stu_cgpa='"+pojo.getCgpa()+"' where stu_id='"+pojo.getStu_id()+"' ");
            
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        if (i > 0) 
        {
            return 1;
        } 
        else 
        {
            return 0;
        }
    }
}
