<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page  import="java.sql.*"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
 <%@include   file="welcome.jsp"%>
    <%
    String search1=request.getParameter("name");
    out.println(search1);
    String cat1=(String)session.getAttribute("search");
    
    String name1="Name";
    String con="Country";
    String edu1="Education";
    String gam="Game";
    String hob="Hobby";
    String na=null;
    String add=null;
    String id=null;
    String ph=null;
    String con1=null;
   String sex=null;
            String hob1=null;
    String edu=null;
    String game=null;
    
    //out.println(search1);
    
        try
        {
        Connection conn;
          ResultSet rs;
          Statement st;
          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
          conn=DriverManager.getConnection("jdbc:odbc:friend");
          st=conn.createStatement();
          //out.println("HJHJ");
          out.println(search1);
          out.println(search1);
          if(cat1.equals(name1))
          {
              out.println(search1);
          rs=st.executeQuery("select * from user_reg1 where fname='"+search1+"'  ");
         
          }
          if(cat1.equals(con))
          {
              out.println(search1);
          rs=st.executeQuery("select * from user_reg1 where fname='"+search1+"'  ");
         
          }
           if(cat1.equals(edu1))
          {
              out.println(search1);
          rs=st.executeQuery("select * from user_reg1 where fname='"+search1+"'  ");
         
          }
           if(cat1.equals(gam))
          {
              out.println(search1);
          rs=st.executeQuery("select * from user_reg1 where fname='"+search1+"'  ");
         
          }
           if(cat1.equals(hob))
          {
              out.println(search1);
          rs=st.executeQuery("select * from user_reg1 where fname='"+search1+"'  ");
         
          }
          
          while(rs.next())
          {
             na=rs.getString("fname");
                  add=rs.getString("address");
                  id=rs.getString("mailid");
                  ph=rs.getString("phone");
                  con1=rs.getString("country");
                 sex=rs.getString("sex");
                 hob1=rs.getString("hobby");
                  game=rs.getString("game");
                  edu=rs.getString("education");
                  //pw=rs.getString("password");
              //out.println("HJ");
                  out.println(na);
              out.println(add);
           }
          }
        }
        catch(Exception e)
        {
        }
   
    
      %>
      
        <%-- <jsp:useBean id="beanInstanceName" scope="session" class="beanPackage.BeanClassName" /> --%>
        <%-- <jsp:getProperty name="beanInstanceName"  property="propertyName" /> --%>

    </body>
</html>
