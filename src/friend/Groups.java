package friend;

import java.sql.*;

/**
 *
 * @author Administrator
 */
public class Groups {
     Connection conn;
          ResultSet rss;
          Statement stt;
    
    /** Creates a new instance of FriendClass */
    public Groups() {
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
    public ResultSet allGroups()throws SQLException
    {
        rss=stt.executeQuery("select * from group_create");
        return rss;
    }
}