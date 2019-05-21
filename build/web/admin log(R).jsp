<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
    <%
    
    try
    {
          String nm=request.getParameter("id");
          String pa=request.getParameter("pw");
          Connection conn;
          ResultSet rss;
          Statement stt;
          String na1=null;
          String pw=null;
          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
          conn=DriverManager.getConnection("jdbc:odbc:friend");
          stt=conn.createStatement();
          rss=stt.executeQuery("select * from Admin log where adminid='"+nm+"' and password='"+pa+"' ");
          //out.println("sdfhhj");
          //st.executeUpdate("insert into login values ('"+na+"','"+pa+"')");
        
          
          while(rss.next())
          {
              na1=rss.getString("adminid");
                  pw=rss.getString("password");
              //out.println("HJ");
                  out.println(na1);
              out.println(pw);
           }
          if((nm.equals(na1))&&(pa.equals(pw)))
          {%>
             <jsp:forward page="login sucess.jsp"/>
          <%}
          else
          {%>
              <jsp:forward page="unsucess.jsp"/>
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
