<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>New Page 3</title>
</head>

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
<%@include  file="group_head.jsp"%>
<%@include  file="group_code.jsp"%>
<%}%>    

</body>

</html>
