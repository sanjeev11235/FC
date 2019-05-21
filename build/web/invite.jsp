<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>New Page 2</title>
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
<form method="POST" action="invite_code.jsp">
  <!--webbot bot="SaveResults"
  U-File="F:\FRIENDS\FRIENDS_CLUB\web\_private\form_results.txt"
  S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
  <div align="center">
    <center>
    <p>
    <font face="Balerina-Normal" color="#0000FF"><u>INVITE A FRIEND</u></font>
    <P>
    
    <table border="0" width="70%">
      <tr>
        <td width="30%"><b>TO</b></td>
        <td width="70%"><input type="text" name="T1" size="20"></td>
      </tr>
      <tr>
        <td width="30%"><b>FROM</b></td>
        <td width="70%"><input type="text" name="T2" size="20"></td>
      </tr>
      <tr>
        <td width="30%"><b>SUBJECT</b></td>
        <td width="70%"><input type="text" readonly="TRUE" name="T3"value="INVITATION" size="20"></td>
      </tr>
      <tr>
        <td width="30%"><b>MESSAGE</b></td>
        <td width="70%"><textarea readonly="true" rows="5" name="S1" cols="38">I hope you'll try out a new service I joined. You can connect with my friends, invite yours, post listings, write your blogs, announce an event to your friends, chat, send instant messages and even join groups based on your area of interest.  
 
It is fun, it is easy and it's addictive�
 
It is a really cool website and I have been making so many friends through my network� It really works!!! 
 
Join http://localhost:8084/FRIENDS_CLUB today itself and do let me know what you think.
 
To check it out, click the Web link below.  (If this link doesn't work, copy it into your browser.)
</textarea></td>
      </tr>
      <tr>
        <td width="30%"></td>
        <td width="70%"></td>
      </tr>
    </table>
    </center>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" value="Submit" name="B1" style="font-family: Franklin Gothic Medium; font-size: 12pt; color: #0000FF; font-weight: bold"><input type="reset" value="Reset" name="B2" style="font-family: Franklin Gothic Medium; font-size: 12pt; color: #0000FF; font-weight: bold"></p>
</form>
<%}%>
</body>

</html>