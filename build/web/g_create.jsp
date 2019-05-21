<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page  import="java.sql.*"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
    <jsp:useBean id="my" scope="session" class="friend.FriendClass" /> 
    
    <%@include  file="welcome.jsp"%>
     <%@include  file="group_head.jsp"%>
    <%@include  file="new_group.jsp"%>
   
    
    <%
  out.println(name1);
    String id=request.getParameter("G1");
    session.setAttribute("gid",id);
   out.println(id);
    ResultSet rs=null;
    Statement st;
    Connection con;
    String na=null;
  try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
          conn1=DriverManager.getConnection("jdbc:odbc:friend");
          stt1=conn1.createStatement();
          rs=stt1.executeQuery("select uname from user_reg1 where mailid='"+id+"' ");
          while(rs.next())
          {
              na=rs.getString(1);
          }
         out.println(na);
         session.setAttribute("member",na);
  }
  catch(Exception e)
  {
  }
   //  String mem=(String)session.getAttribute("member");
        // String gid=(String)session.getAttribute("gid");
        // out.println(mem);
        // out.println(gid);
        %>

     
        <%-- <jsp:getProperty name="beanInstanceName"  property="propertyName" /> --%>

    </body>
</html>
