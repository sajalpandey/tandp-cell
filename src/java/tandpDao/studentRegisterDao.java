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
import tandpPojo.studentPojo;

/**
 *
 * @author SAJAL-PC
 */
public class studentRegisterDao {

    public ArrayList<tandpPojo.studentPojo> FetchData() {
        ArrayList<studentPojo> plist = new ArrayList<>();
        try {
            Connection con = DBconnection.getconnection();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from student");
            while (rs.next()) {
                studentPojo obj = new studentPojo();
                obj.setStu_name(rs.getString(2));
                obj.setPassword(rs.getString(3));
                obj.setEmail(rs.getString(4));
                obj.setDate(rs.getString(5));
                obj.setGender(rs.getString(7));
                obj.setBranch(rs.getString(6));
                obj.setAddress(rs.getString(8));
                obj.setPhoto(rs.getString(9));
                plist.add(obj);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return plist;
    }

    public int insert(tandpPojo.studentPojo pojo) {
        int i = 0,stuid=0;
        try {
            Connection con = DBconnection.getconnection();
            Statement stmt = con.createStatement();
            i = stmt.executeUpdate("insert into student (stu_name,passcode,email,dob,branch,gender,address,photo) values('" + pojo.getStu_name() + "','" + pojo.getPassword() + "','" + pojo.getEmail() + "','"+pojo.getDate()+"','" + pojo.getBranch() + "','" + pojo.getGender() + "', '"+pojo.getAddress()+"','"+pojo.getPhoto()+"')");
            
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
    public int update(tandpPojo.studentPojo pojo)
    {
        int i = 0;
        try {
            Connection con = DBconnection.getconnection();
            Statement stmt = con.createStatement();
            i = stmt.executeUpdate("update student set stu_name='"+pojo.getStu_name()+"' , passcode='"+pojo.getPassword()+"' , address='"+pojo.getAddress()+"' , photo='"+pojo.getPhoto()+"' where stu_id ='"+pojo.getStu_id()+"' " );
            
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
