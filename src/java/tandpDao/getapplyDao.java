/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tandpDao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author SAJAL-PC
 */
public class getapplyDao {
    public int insert(tandpPojo.getapplyPojo pojo)
    {
        int i=0;
        try
        {
            Connection con=DBconnection.DBconnection.getconnection();
            Statement stmt = con.createStatement();
            i=stmt.executeUpdate("insert into stuhastest (stu_id,test_id) values('"+pojo.getStu_id()+"' , '"+pojo.getTest_id()+"')");
            
        } catch (SQLException ex) {
            Logger.getLogger(getapplyDao.class.getName()).log(Level.SEVERE, null, ex);
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
