<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
<%@include  file="header.jsp"%>


<form method="POST" action="--WEBBOT-SELF--">
  <!--webbot bot="SaveResults" U-File="fpweb:///_private/form_results.txt"
  S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
  <div align="left">
    <table border="0" width="32%">
      <tr>
        <td width="100%">&nbsp;&nbsp; <img border="0" src="pictures/welco[1].gif" width="130" height="26">
<b>
<%
      String name1=(String)session.getAttribute("usid"); 
      out.println(name1);
    %></b></td>
      </tr>
    </table>
  </div>
</form>

    </body>
</html>
