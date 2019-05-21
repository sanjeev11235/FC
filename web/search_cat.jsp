<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page  import="java.sql.*"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
   
      <%@include  file="welcome.jsp"%>
      <%
         String cat=request.getParameter("search");
         out.println(cat);
          String nws=request.getParameter("text");
         session.setAttribute("new",nws);
         
          String name2="Name";
    String con="Country";
    String edu1="Education";
    String gam="Game";
    String hob="Hobby";
    
    if(cat.equals(name2))
          {
             // out.println(nws);
          %>
         <jsp:forward page="name_search.jsp"/>
         <%//rs=st.executeQuery("select * from user_reg where fname='"+search1+"'  ");
         
          }
          if(cat.equals(con))
          {
             // out.println(nws);
        %>
        <jsp:forward page="country_search.jsp"/>
          <%//rs=st.executeQuery("select * from user_reg where fname='"+search1+"'  ");
         
          }
           if(cat.equals(edu1))
          {
              //out.println(nws);
        %>
        <jsp:forward page="education_search.jsp"/>
          <%//rs=st.executeQuery("select * from user_reg where fname='"+search1+"'  ");
         
          }
           if(cat.equals(gam))
          {
              //out.println(nws);
        %>
        <jsp:forward page="game_search.jsp"/>
          <%//rs=st.executeQuery("select * from user_reg where fname='"+search1+"'  ");
         
          }
           if(cat.equals(hob))
          {
              //out.println(nws);
        %>
   <jsp:forward page="hobby_search.jsp"/>      
 <%//rs=st.executeQuery("select * from user_reg where fname='"+search1+"'  ");
         
          }
          
     %>
<%--<form method="POST" action="search_code1.jsp">
  <!--webbot bot="SaveResults" U-File="fpweb:///_private/form_results.txt"
  S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </p>
  <div align="center">
    <center>
    <table border="0" width="68%">
      <tr>
        <td width="100%"><b><font color="#0000FF">Enter the name :<input type="text" name="name" size="20"></font></b></td>
      </tr>
    </table>
    </center>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" value="View" name="B1"><input type="reset" value="Reset" name="B2"></p>
</form>--%>

        <%-- <jsp:useBean id="beanInstanceName" scope="session" class="beanPackage.BeanClassName" /> --%>
        <%-- <jsp:getProperty name="beanInstanceName"  property="propertyName" /> --%>

    </body>
</html>
