/*
 * FriendClass.java
 *
 * Created on March 30, 2007, 11:09 AM
 */

package friend;
import java.sql.*;

/**
 *
 * @author Administrator
 */
public class FriendClass {
     Connection conn;
          ResultSet rss;
          Statement stt;
    
    /** Creates a new instance of FriendClass */
    public FriendClass() {
        try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
          conn=DriverManager.getConnection("jdbc:odbc:friend");
          stt=conn.createStatement();
        }
        catch(Exception e)
        {
        }
        
        }
    
    public String groupCreation(String from,String to,String dat,String sta)
    {
        try
        {
        stt.executeUpdate("insert into group_table values ('"+from+"','"+to+"','" +dat+"','"+sta+"')");
        return "ok";
        }
        catch(Exception e)
        {
            return "error";
        }
    }
    public  ResultSet selectUname(String id)throws SQLException
    {
        rss=stt.executeQuery("select uname from user_reg1 where mailid='"+id+"' ");
        return rss;
    }
    
    }
    

