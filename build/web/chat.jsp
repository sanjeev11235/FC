<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
    <%@include  file="welcome.jsp"%>
<%
    String nnn=(String)session.getAttribute("usid");  
    if(nnn==null)
    {
    response.sendRedirect("login_warning.jsp");
    }
    else
    {
     %>
     <jsp:forward page="login.jsp"/>
     <%}%>

        <%-- <jsp:useBean id="beanInstanceName" scope="session" class="beanPackage.BeanClassName" /> --%>
        <%-- <jsp:getProperty name="beanInstanceName"  property="propertyName" /> --%>

    </body>
</html>