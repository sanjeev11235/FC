<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
    <%
      try
      {
          String na=request.getParameter("user");
          String pa=request.getParameter("T1");
          session.setAttribute("usid",na);
          out.println(na);
          out.println(pa);
          String na1=null;
          String pw=null;
          
          Connection con;
          ResultSet rs;
          Statement st;
          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
          con=DriverManager.getConnection("jdbc:odbc:friend");
          st=con.createStatement();
          //out.println("HJHJ");
          rs=st.executeQuery("select * from login where name='"+na+"' and password='"+pa+"' ");
          //out.println("sdfhhj");
          //st.executeUpdate("insert into login values ('"+na+"','"+pa+"')");
        
          
          while(rs.next())
          {
              na1=rs.getString("name");
                  pw=rs.getString("password");
              //out.println("HJ");
                  out.println(na1);
              out.println(pw);
           }
          if((na.equals(na1))&&(pa.equals(pw)))
          {%>
             <jsp:forward page="welcome.jsp"/>
          <%}
          else
          {%>
              <jsp:forward page="login failed.jsp"/>
         <% }
      }
      catch(Exception e)
      {
      }
        %>
       

        <%-- <jsp:useBean id="beanInstanceName" scope="session" class="beanPackage.BeanClassName" /> --%>
        <%-- <jsp:getProperty name="beanInstanceName"  property="propertyName" /> --%>

    </body>
</html>
