<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page  import="java.sql.*"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
      <%@include  file="welcome.jsp"%>
    <%
    // out.println(name1);
    String gro=null;
    String gro2=null;
      String mem=(String)session.getAttribute("member");
         String gid=(String)session.getAttribute("gid");
         gro=request.getParameter("Group");
          gro2=request.getParameter("Group1");
          out.println(gro);
           out.println(gro2);
       //out.println(mem);
       //out.println(gid);
       try
        {
          //out.println("JHJ");
          Connection con1;
        ResultSet rs;
          Statement st=null;
          String gro1=null;
          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         // out.println("JHJ");
          con1=DriverManager.getConnection("jdbc:odbc:friend");
         // out.println("JHJ");
          st=con1.createStatement();
          
          if(gro2==null)
          {
          rs=st.executeQuery("select * from group_create where gname='"+gro+"' ");
          while(rs.next())
          {
              gro1=rs.getString(1);
            out.println(gro1);
          }
          }
          if(gro==null)
          {
              out.println("hai");
            rs=st.executeQuery("select * from group_create where gname='"+gro2+"' ");
          while(rs.next())
          {
              gro1=rs.getString(1);
              out.println(gro1);
          }  
          }
 //st.executeUpdate("insert into group_member values('"+gro1+"','"+name1+"','"+mem+"')");
           %>
        <%--<jsp:forward page="sucess.jsp"/>--%>
          <% 
          out.println("ok");
        }
        catch(Exception e)
        {
            
        }
    
         %>
       


        <%-- <jsp:useBean id="beanInstanceName" scope="session" class="beanPackage.BeanClassName" /> --%>
        <%-- <jsp:getProperty name="beanInstanceName"  property="propertyName" /> --%>

    </body>
</html>
