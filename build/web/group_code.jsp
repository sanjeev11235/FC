<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page  import="java.sql.*"%>
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>New Page 3</title>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>New Page 3</title>
</head>

<body>

<form method="POST" action="g_create.jsp">
  
  <div align="center">
    <center>
    <table border="1" width="100%">
      <tr>
        <td width="20%">Name</td>
        <td width="20%">E mail Id</td>
        <td width="20%">Phone No</td>
        <td width="20%">Address</td>
        <td width="20%">Country</td>
        <td width="20%">Image</td>
        <td width="20%">Add to Group</td>
      </tr><tr>
   <% 
   //String txt=(String)session.getAttribute("new");
    String na=null;
    String add=null;
    String id=null;
    String ph=null;
    String con1=null;
   String img=null;
            String hob1=null;
    String edu=null;
    String game=null;
    String txt=null;
   try
        {
        Connection conn;
          ResultSet rs;
          Statement st;
          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
          conn=DriverManager.getConnection("jdbc:odbc:friend");
          st=conn.createStatement();
          //out.println("HJHJ");
         
          
             
          rs=st.executeQuery("select * from user_reg1   ");
         while (rs.next())
         {
              txt=rs.getString("fname");
              id=rs.getString("mailid");
              add=rs.getString("address");
             ph=rs.getString("phone");
              con1=rs.getString("country"); 
               img=rs.getString("image"); 
               %>
              <td><%=txt%></td>
              <td><%=id%></td>
               <td><%=ph%></td>
              <td><%=add%></td>
               <td><%=con1%></td>
              <td><img src="<%=img%>"></td>
              <td><input type="radio" name="G1" value="<%=id%>"></td></tr> 
         <% }
   }
   catch(Exception e)
   {
   }%>
   </table>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" value="ADD TO GROUP" name="B1" style="color: #0000FF; font-family: Georgia"></p>
  <p>&nbsp;</p>
</form>

      
    

</body>

</html>
