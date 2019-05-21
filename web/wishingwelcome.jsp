<%@page language="java" contentType="text/html" %>
<html>
    <head><title>Welcome Scriplet</title></head>
    <body bgcolor="white">
    <% java.util.Date now=new java.util.Date();%>
    
 <span style="font:bold 24pt blue">             
 <% if(now.getHours()<12) { %> <font color="blue" >Good Morning!</font>
 <% } else if(now.getHours()<17) { %> <b><font color="blue">Good Afternoon!</font></b>
 <%} else { %> <font color="blue">Good Evening!</font> <% } %>
 </span>
 

        <%-- <jsp:useBean id="beanInstanceName" scope="session" class="beanPackage.BeanClassName" /> --%>
        <%-- <jsp:getProperty name="beanInstanceName"  property="propertyName" /> --%>

    </body>
</html>