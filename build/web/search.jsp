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
<form method="POST" action="search_cat.jsp">
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </p>
  <div align="center">
    <center>
    <table border="0" width="57%">
      <tr>
        <td width="37%">&nbsp;&nbsp;&nbsp; <font color="#0000FF"><b>Search by </b></font></td>
        <td width="63%"><select size="1" name="search">
          <option selected value="--SELECT--">--SELECT--</option>
          <option value="Name">Name</option>
          <option value="Country">Country</option>
          <option value="Education">Education</option>
          <option value="Hobby">Hobby</option>
          <option value="Game">Game</option>
          &nbsp;
          </select></td>
      </tr>
      <tr>
        <td width="37%"><font color="#0000FF"><b>&nbsp;Enter the text</b></font></td>
        <td width="63%"><input type="text" name="text" size="17"></td>
      </tr>
    </table>
    </center>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" value="SEARCH" name="B1" style="color: #0000FF; font-family: Georgia"></p>
  <p>&nbsp;</p>
</form>
<%}%>
</body>

</html>
