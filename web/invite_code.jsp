<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page  import="java.util.*"%>

<html>
    <head><title>JSP Page</title></head>
    <body>

         <jsp:useBean id="inviteid" scope="session" class="invite.InviteClass" /> 
         <jsp:useBean id="group" class="friend.FriendClass"/>
        <%-- <jsp:getProperty name="beanInstanceName"  property="propertyName" /> --%>
         <% GregorianCalendar Gc = new GregorianCalendar();
        String month[]= {"01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"};
        String date = month[Gc.get(Gc.MONTH)]+"-"+Gc.get(Gc.DATE)+"-"+Gc.get(Gc.YEAR);
        out.println(date);%>
            <%
            
            String from=request.getParameter("T2");
             String to=request.getParameter("T1");
              String sub=request.getParameter("T3");
               String msg=request.getParameter("S1");
               String ss="false";
               String in=inviteid.SendMessage(to,from,ss,sub,msg);
               String gro=group.groupCreation(from,to,date,ss);
               
                %>
    </body>
</html>
