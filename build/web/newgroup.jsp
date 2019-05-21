<html>
<%@page  import="java.util.*"%>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>Group name</title>
</head>

<body>
<%@include  file="welcome.jsp"%>
<% GregorianCalendar cal = new GregorianCalendar();
String month[]= {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
String date = month[cal.get(cal.MONTH)]+" "+cal.get(cal.DATE)+" "+cal.get(cal.YEAR);
%>
<form method="POST" action="g_creation.jsp">
  <!--webbot bot="SaveResults"
  U-File="F:\FRIENDS\FRIENDS_CLUB\web\_private\form_results.txt"
  S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
  <div align="center">
    <center>
    <table border="0" width="52%">
      <tr>
        <td width="35%">Group name</td>
        <td width="65%"><input type="text" name="T1" size="20"></td>
      </tr>
      <tr>
        <td width="35%">Author</td>
        <td width="65%"><input type="text" readonly=true name="T2" value="<%=name1%>"size="20"></td>
      </tr>
      <tr>
        <td width="35%">Date</td>
        <td width="65%"><input type="text" readonly=true name="T3"value="<%=date%>" size="20"></td>
      </tr>
    </table>
    </center>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" value="Create" name="B1"></p>
</form>

</body>

</html>
