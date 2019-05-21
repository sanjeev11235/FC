<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page  import="java.sql.*"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
<%@include  file="welcome.jsp"%>
<%@include  file="group_head.jsp"%>
     <form method="POST" action="g_remove.jsp">
  <%
  out.println(name1);
%>
  <div align="center">
    <center>
    <table border="1" width="50%">
      <tr>
        <td width="20%">Name</td>
        <td width="20%">E mail Id</td>
        <td width="20%">Phone No</td>
        <td width="20%">Address</td>
        <td width="20%">Country</td>
        <td width="20%">Image</td>
         <td width="20%">Group Name</td>
        <td width="20%">Remove</td>
      </tr><tr>
   <%
   //String txt=(String)session.getAttribute("new");
    String gna=null;
    String un=null;
    String id=null;
     String eid=null;
      String add=null;
    String ph=null;
    String con=null;
   String img=null;
   String gid=null;
    String txt=null;
   try
        {
        Connection conn;
          ResultSet rs;
           ResultSet rs1,rs2;
          Statement st,st1;
          Statement st2=null;
          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
          conn=DriverManager.getConnection("jdbc:odbc:friend");
          st=conn.createStatement();
           st1=conn.createStatement();
            st2=conn.createStatement();
          //out.println("HJHJ");
         
          
             
rs1=st.executeQuery("select * from group_member where uname='"+name1+"'   ");
      while (rs1.next())
     {
              
          gid=rs1.getString(1);
           un=rs1.getString(3);
            // out.println(gid);
         // out.println(un);
           // out.println("HGH");
            rs=st2.executeQuery("select * from group_create where gid='"+gid+"'   ");
      while (rs.next())
     {
              
          gna=rs.getString(2);
       //   out.println(gna);
        rs2=st1.executeQuery("select * from user_reg1 where uname='"+un+"' ");
       //  out.println("HGHghjg");
            while(rs2.next())
            {
                 txt=rs2.getString(1);
            id=rs2.getString("mailid");
             add=rs2.getString("address");
           ph=rs2.getString("phone");
           con=rs2.getString("country"); 
            img=rs2.getString("image"); 
               
               /*out.println(txt);
            out.println(id);
             out.println(ph);
             out.println(add);
             out.println(con);*/
          %>
          <td><%=txt%></td>
              <td><%=id%></td>
               <td><%=ph%></td>
              <td><%=add%></td>
               <td><%=con%></td>
              
              <td><img src="<%=img%>"></td> 
               <td><%=gna%></td>
               <td><input type=radio value="<%=txt%>" name="Remove"></td>
      </tr>
          
       <%     }
 //out.println("jjjk");
    
   }}
}
   catch(Exception e)
   {
   }%>
  
   </table>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" value="REMOVE" name="B1" style="color: #0000FF; font-family: Georgia"></p>
  <p>&nbsp;</p>
</form>

      
    

</body>

</html>
