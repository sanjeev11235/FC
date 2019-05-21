<html>
<%@ page import="jChatBox.Util.*,jChatBox.Chat.*,java.util.*" %>
<jsp:useBean id="SystemProcessor" class="jChatBox.Service.ModeratorProcessor" scope="application" />
<%
	jChatBox.Chat.ChatroomManager ChatroomManager = null;
	XMLPropertyResourceBundle defaultBundle = (XMLPropertyResourceBundle) XMLConfig.RESOURCES.get(XMLConfig.DEFAULTLANGUAGE);
	response.setContentType("text/html; charset="+defaultBundle.getString("global.encoding"));
	/* I18N support since Servlets 2.3. */
	//try
	//{
	//  request.setCharacterEncoding(defaultBundle.getString("global.encoding"));
	//} catch (Exception e) {}
	String tabpane = request.getParameter("tabpane");
	String jspDisplay = SystemProcessor.execute(request, session, application);
	if (jspDisplay != null)
	{
		response.sendRedirect(jspDisplay);
	}
	else
	{
		ChatroomManager = jChatBox.Chat.ChatroomManager.getInstance();
	}
%>
<head>
<LINK REL=STYLESHEET TYPE="text/css" HREF="styles/admin.css">
<script language="JavaScript">
<!--
function manage(opt)
{
	if (opt != "")
	{
		location.href="chatroom.jsp?todo=manage&rand=<%= System.currentTimeMillis() %>&id="+opt;
	}
}
function updatemod(opti)
{
	if (opti != "")
	{
		var info = opti.split("|");
		if (info.length > 1)
		{
			document.moderator.login.value=info[0];
			document.moderator.email.value=info[1];
		}
	}
}
function backup()
{
	location.href="menu.jsp?todo=backup&rand=<%= System.currentTimeMillis() %>";
}
function logout()
{
	location.href="index.jsp?todo=logout&rand=<%= System.currentTimeMillis() %>";
}
function add()
{
	location.href="moderators.jsp?tabpane=add&rand=<%= System.currentTimeMillis() %>";
}
function remove()
{
	location.href="moderators.jsp?tabpane=remove&rand=<%= System.currentTimeMillis() %>";
}
function update()
{
	location.href="moderators.jsp?tabpane=update&rand=<%= System.currentTimeMillis() %>";
}
function removemoderator()
{
	document.moderator.todo.value="removemoderator";
	document.moderator.submit();
}
function addmoderator()
{
	if (document.moderator.login.value.length > 0)
	{
		if (document.moderator.password.value.length > 0)
		{
			if (document.moderator.password.value == document.moderator.checkpassword.value)
			{
				document.moderator.todo.value="addmoderator";
				document.moderator.submit();
			}
			else
			{
				alert("Password not confirmed !");
			}
		}
		else
		{
			alert("You have to fill in PASSWORD field !");
		}
	}
	else
	{
		alert("You have to fill in USERNAME field !");
	}
}
function updatemoderator()
{
	if (document.moderator.login.value.length > 0)
	{
		if (document.moderator.update.checked == true)
		{
			if (document.moderator.password.value == document.moderator.checkpassword.value)
			{
				document.moderator.todo.value="updatemoderator";
				document.moderator.submit();
			}
			else
			{
				alert("Password not confirmed !");
			}
		}
		else
		{
			document.moderator.todo.value="updatemoderator";
			document.moderator.submit();
		}
	}
	else
	{
		alert("You have to fill in USERNAME field !");
	}
}
//-->
</script>
<title>jChatBox Moderators</title>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" link="#9999CC" alink="#9999CC" vlink="#9999CC">
<%@ include file="header.jsp" %>
<form method="post" action="moderators.jsp" name="moderator">
  <p>&nbsp;</p>
  <table width="100%" border="0" cellspacing="1" cellpadding="0">
    <tr>
      <td width="25%" valign="top">
        <table width="100%" border="0" cellspacing="1" cellpadding="4">
          <tr>
            <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><img src="images/reddot.gif" width="12" height="12"><br>
              <br>
              </font></td>
            <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b><font color="#990000">Manage
              chatroom<br>
              </font></b></font>
              <table width="100%%" border="0" cellspacing="1" cellpadding="0">
                <tr>
                  <td> <font face="Verdana, Arial, Helvetica, sans-serif" size="-1">
                    <select name="chatrooms" onChange="manage(this.options[selectedIndex].value);">
                      <option selected>Select a chatroom</option>
                      <%
                      	if (ChatroomManager != null)
                      	{
                      		Vector chatrooms = ChatroomManager.getChatrooms();
                      		Chatroom chatroom = null;
                      		for (int i=0;i<chatrooms.size();i++)
                      		{
                      			chatroom = (Chatroom) chatrooms.elementAt(i);
                      			out.print("<option value=\""+chatroom.getParams().getID()+"\">"+chatroom.getParams().getName()+"</option>");
                      		}
                      	}
                      %>
                    </select>
                    </font></td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><img src="images/reddot.gif" width="12" height="12"></font></td>
            <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><a class="menulink" href="open.jsp"><b>Open
              a chatroom</b></a></font></td>
          </tr>
          <tr>
            <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><img src="images/reddot.gif" width="12" height="12"></font></td>
            <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b><font color="#FF0000">Moderators</font></b></font></td>
          </tr>
          <tr>
            <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><img src="images/reddot.gif" width="12" height="12"></font></td>
            <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><a class="menulink" href="javascript:backup()"><b>Backup
              chatrooms </b></a></font></td>
          </tr>
          <tr>
            <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><img src="images/reddot.gif" width="12" height="12"></font></td>
            <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><a class="menulink" href="xmlconfig.jsp"><b>Manage
              jChatBox</b></a></font></td>
          </tr>
          <tr>
            <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><img src="images/reddot.gif" width="12" height="12"></font></td>
            <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><a class="menulink" href="javascript:logout()"><b>Logout</b></a></font></td>
          </tr>
        </table>
      </td>
      <td width="75%" valign="top">
        <table width="98%" border="0" cellspacing="1" cellpadding="0" align="center">
          <tr>
            <td>
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr bgcolor="#999999">
                  <td bgcolor="#003399">
                    <table width="100%" border="0" cellspacing="1" cellpadding="2">
                      <tr bgcolor="#FFFFFF">
                        <td nowrap>
                          <table width="100%" border="0" cellspacing="5" cellpadding="5">
                            <tr>
                              <td>
                                <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#0000FF"><font face="Arial, Helvetica, sans-serif">-
                                  jChatBox Moderators -</font></font></b></font>
                                  <font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><br>
                                  <br>
                                  </font><font face="Verdana, Arial, Helvetica, sans-serif" size="-1" color="#FF0000"><b>
                                  <%
          							if ((SystemProcessor.getSysMessage(session)).equals(Conf.MODERATORADDED)) out.print("Moderator has been added successfully.");
          							else if ((SystemProcessor.getSysMessage(session)).equals(Conf.MODERATORUPDATED)) out.print("Moderator has been updated successfully.");
          							else if ((SystemProcessor.getSysMessage(session)).equals(Conf.MODERATORREMOVED)) out.print("Moderator has been removed successfully.");
          							else if ((SystemProcessor.getSysMessage(session)).equals(Conf.COMMANDNOTALLOWED)) out.print(Conf.COMMANDNOTALLOWED);
          						  %>
                                  </b></font><br><br>
                                  <table width="98%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td bgcolor="#990000">
                                        <table width="100%" border="0" cellspacing="1" cellpadding="1">
                                          <tr align="center">
                                            <td bgcolor="#FFFFCC"><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b><font color="#FF0000"><a class="menulink" href="javascript:add()">Add
                                              moderator</a></font></b></font></td>
                                            <td bgcolor="#FFFFCC"><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b><font color="#FF0000"><a class="menulink" href="javascript:remove()">Remove
                                              moderator</a></font></b></font></td>
                                            <td bgcolor="#FFFFCC"><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b><font color="#FF0000"><a class="menulink" href="javascript:update()">Update
                                              moderator </a></font></b></font></td>
                                          </tr>
                                        </table>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td bgcolor="#990000">
                                        <table width="100%" border="0" cellspacing="1" cellpadding="1">
                                          <tr>
                                            <td bgcolor="#FFFFFF" align="center">
                                              <% if ((tabpane != null) && (tabpane.equals("remove")) ) {%>
											  <table border="0" cellspacing="1" cellpadding="1">
                                                <tr>
                                                  <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b>&nbsp;Moderator
                                                    :&nbsp;</b></font></td>
                                                  <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                  <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="-1">
                                                    <select name="moderatorlist" size="5" multiple class="SystemBox">
                                                      <% if ( (XMLConfig.MODERATORS != null) && (!XMLConfig.MODERATORS.isEmpty()) )
													  {
                                                        %>
                                                      <option value="">- Select moderator(s) to remove -</option><%
														Enumeration e = XMLConfig.MODERATORS.keys();
														while (e.hasMoreElements())
														{
															String name = (String) e.nextElement();
															%><option value="<%= name %>"><%= name %></option><%
														}
													  }
													  else
													  {
                                                        %><option value="">- No moderator(s) to remove -</option><%
													  }
													%>
                                                    </select>
                                                    </font></td>
                                                  <td nowrap align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="-1">
                                                    <input type="hidden" name="todo">
                                                    <input type="button" name="Submit" value="Remove" onClick="removemoderator()" class="SystemButton">
                                                    </font></td>
                                                </tr>
                                              </table>
											  <% } else if ((tabpane != null) && (tabpane.equals("update"))) { %>
                                              <table border="0" cellspacing="1" cellpadding="0">
                                                <tr>
                                                  <td nowrap><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b>&nbsp;Moderator
                                                    :&nbsp;</b></font></td>
                                                  <td colspan="3"><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"></font><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"></font><font face="Verdana, Arial, Helvetica, sans-serif" size="-1">
                                                    <select name="moderatorlist" onChange="updatemod(this.options[selectedIndex].value);" class="SystemBox">
                                                      <% if ( (XMLConfig.MODERATORS != null) && (!XMLConfig.MODERATORS.isEmpty()) )
													  {
                                                        %>
                                                      <option value="" selected>- Select a moderator to update -</option>
                                                      <%
														Enumeration e = XMLConfig.MODERATORS.keys();
														while (e.hasMoreElements())
														{
															String name = (String) e.nextElement();
															InternalUser iu = (InternalUser) XMLConfig.MODERATORS.get(name);
															String email = iu.getEmail();
															%>
                                                      <option value="<%= name %>|<%= email %>"><%= name %></option>
                                                      <%
														}
													  }
													  else
													  {
                                                        %>
                                                      <option value="" selected>- No moderator(s) to update -</option>
                                                      <%
													  }
													%>
                                                    </select>
                                                    </font></td>
                                                </tr>
                                                <tr>
                                                  <td nowrap><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b>&nbsp;Username
                                                    (login) :&nbsp;</b></font></td>
                                                  <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1">
                                                    <input type="text" name="login" size="16" class="SystemBox">
                                                    </font></td>
                                                  <td nowrap><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b>&nbsp;&nbsp;Email
                                                    :&nbsp;</b></font></td>
                                                  <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1">
                                                    <input type="text" name="email" size="19" class="SystemBox">
                                                    </font></td>
                                                </tr>
                                                <tr>
                                                  <td nowrap colspan="4">
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td>
                                                          <input type="checkbox" name="update" value="yes">
                                                        </td>
                                                        <td nowrap><b><font face="Verdana, Arial, Helvetica, sans-serif" size="-1" color="#FF0000">&nbsp;Update
                                                          moderator password ?</font></b></td>
                                                      </tr>
                                                    </table>
                                                  </td>
                                                </tr>
                                                <tr bgcolor="#EEEEEE">
                                                  <td nowrap><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b>&nbsp;New
                                                    password : &nbsp;</b></font></td>
                                                  <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1">
                                                    <input type="password" name="password" size="16" class="SystemBox">
                                                    </font></td>
                                                  <td bgcolor="#FFFFFF" align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"></font></td>
                                                  <td bgcolor="#FFFFFF" align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"></font></td>
                                                </tr>
                                                <tr bgcolor="#EEEEEE">
                                                  <td nowrap><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b>&nbsp;Confirm
                                                    password :</b>&nbsp; </font></td>
                                                  <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1">
                                                    <input type="password" name="checkpassword" size="16" class="SystemBox">
                                                    </font></td>
                                                  <td bgcolor="#FFFFFF" align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"></font></td>
                                                  <td bgcolor="#FFFFFF" align="center" valign="middle"><font face="Verdana, Arial, Helvetica, sans-serif" size="-1">
                                                    <input type="hidden" name="todo">
                                                    <input type="button" name="Submit" value="Update" onClick="updatemoderator()" class="SystemButton">
                                                    </font></td>
                                                </tr>
                                              </table>
											  <% } else { %>
                                              <table border="0" cellspacing="1" cellpadding="0">
                                                <tr>
                                                  <td nowrap><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b>&nbsp;Username
                                                    (login) :&nbsp;</b></font></td>
                                                  <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1">
                                                    <input type="text" name="login" size="16" class="SystemBox">
                                                    </font></td>
                                                  <td nowrap><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b>&nbsp;&nbsp;Email
                                                    :&nbsp;</b></font></td>
                                                  <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1">
                                                    <input type="text" name="email" size="19" class="SystemBox">
                                                    </font></td>
                                                </tr>
                                                <tr>
                                                  <td nowrap colspan="4">&nbsp;</td>
                                                </tr>
                                                <tr bgcolor="#EEEEEE">
                                                  <td nowrap><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b>&nbsp;Password
                                                    : &nbsp;</b></font></td>
                                                  <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1">
                                                    <input type="password" name="password" size="16" class="SystemBox">
                                                    </font></td>
                                                  <td bgcolor="#FFFFFF" align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"></font></td>
                                                  <td bgcolor="#FFFFFF" align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"></font></td>
                                                </tr>
                                                <tr bgcolor="#EEEEEE">
                                                  <td nowrap><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b>&nbsp;Confirm
                                                    password :</b>&nbsp; </font></td>
                                                  <td><font face="Verdana, Arial, Helvetica, sans-serif" size="-1">
                                                    <input type="password" name="checkpassword" size="16" class="SystemBox">
                                                    </font></td>
                                                  <td bgcolor="#FFFFFF" align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"></font></td>
                                                  <td bgcolor="#FFFFFF" align="center" valign="middle"><font face="Verdana, Arial, Helvetica, sans-serif" size="-1">
                                                    <input type="hidden" name="todo">
                                                    <input type="button" name="Submit" value="Submit" onClick="addmoderator()" class="SystemButton">
                                                    </font></td>
                                                </tr>
                                              </table>
                                              <% } %>
                                            </td>
                                          </tr>
                                        </table>
                                      </td>
                                    </tr>
                                  </table>
                                  <font face="Verdana, Arial, Helvetica, sans-serif" size="-1" color="#FF0000"><b>
                                  </b></font><font face="Verdana, Arial, Helvetica, sans-serif" size="-1">
                                  </font></div>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
        <div align="center"><br>
          <font face="Verdana, Arial, Helvetica, sans-serif" size="-1" color="#FF0000"><b>
          </b></font> </div>
      </td>
    </tr>
  </table>
  </form>
<%@ include file="footer.jsp" %>
</body>
</html>
