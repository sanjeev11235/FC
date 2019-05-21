<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>

<head>
<title>User name</title>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta content="Microsoft FrontPage 4.0" name="GENERATOR">
<meta content="FrontPage.Editor.Document" name="ProgId">
<meta content="none" name="Microsoft Theme">
</head>

<body>
<%@include  file="header.jsp"%>

<div align="center">
  <center>
<form action="register.jsp" method="POST">
<table height="1" cellspacing="1" width="67%" border="1" background="../../../Saju&Vinu/web/image/tttt.jpg">
  <tbody>
    <tr>
      <td width="100%" height="1" background="../../../Saju&Vinu/web/image/03-Background.jpg">
        
          <div align="right">
          <table cellspacing="1" width="100%" border="0" height="240">
            <tbody>
              <tr>
                <td width="100%" height="25" colspan="2"><b><i><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <marquee width="249" height="22" behavior="alternate" scrollamount="4">User
                  Registration </marquee>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></i></b></td>
              </tr>
              <tr>
                <td width="37%" height="25"><b>User
                  name</b></td>
                <td width="63%" height="25"><input name="uname" size="20"></td>
              </tr>
              <tr>
                <td width="37%" height="28"><b>First Name</b></td>
                <td width="63%" height="28">
                 
                    <p><input type="text" name="fname" size="20"></p>
                 
                </td>
              </tr>
              <tr>
                <td width="37%" height="25"><b>Password</b></td>
                <td width="63%" height="25"><input type="password" name="pword" size="20"></td>
              </tr>
              <tr>
                <td width="37%" height="25"><b>Confirm
                  Password</b></td>
                <td width="63%" height="25"><input type="password" name="cpword" size="20"></td>
              </tr>
              <tr>
                <td width="37%" height="25"><b>Insert&nbsp; Image</b></td>
                <td width="63%" height="25">
          <input type="file" value="Submit" name="image"></td>
              </tr>
              <tr>
                <td width="37%" height="25"><b>E-mail
                  Id</b></td>
                <td width="63%" height="25"><input name="ename" size="20"></td>
              </tr>
              <tr>
                <td width="37%" height="25"><b>Phone Number
                  </b></td>
                <td width="63%" height="25"><input name="phone" size="20"></td>
              </tr>
              <tr>
                <td width="37%" height="22"><b>Address</b></td>
                <td width="63%" height="22"><textarea rows="2" name="add" cols="15"></textarea></td>
              </tr>
              <tr>
                <td width="37%" height="25"><b>Country</b></td>
                <td width="63%" height="25"><select size="1" name="country">
                    <option selected>American</option>
                    <option>Andorra</option>
                    <option>Anguilla</option>
                    <option>Bahrain</option>
                    <option>Bermuda</option>
                    <option>Canada</option>
                    <option value>Denmark</option>
                    <option>Iceland</option>
                    <option>India</option>
                    <option>Mozambique</option>
                    <option>Paraguay</option>
                    <option>Syria</option>
                  </select></td>
              </tr>
              <tr>
                <td width="37%" height="21"><b>Gender</b></td>
                <td width="63%" height="21"><input type="radio" value="Male" name="gender">Male&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="radio" checked value="Female" name="gender">Female</td>
              </tr>
              <tr>
                <td width="37%" height="27"><b>Birthday</b></td>
                <td width="63%" height="27"><select size="1" name="date">
                    <option selected>Day</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                    <option>11</option>
                    <option>12</option>
                    <option>13</option>
                    <option>14</option>
                    <option>15</option>
                    <option>16</option>
                    <option>17</option>
                    <option>18</option>
                    <option>19</option>
                    <option>20</option>
                    <option>21</option>
                    <option>22</option>
                    <option>23</option>
                    <option>24</option>
                    <option>25</option>
                    <option>26</option>
                    <option>27</option>
                    <option>28</option>
                    <option>29</option>
                    <option>30</option>
                    <option>31</option>
                  </select><select size="1" name="month">
                    <option selected>Month</option>
                    <option>January</option>
                    <option>February</option>
                    <option>March</option>
                    <option>April</option>
                    <option>May</option>
                    <option>June</option>
                    <option>July</option>
                    <option>August</option>
                    <option>September</option>
                    <option>October</option>
                    <option>November</option>
                    <option>December</option>
                  </select><select size="1" name="year">
                    <option selected>Year</option>
                    <option>1986</option>
                    <option>1987</option>
                    <option>1988</option>
                    <option>1989</option>
                    <option>1990</option>
                    <option>1991</option>
                    <option>1992</option>
                    <option>1993</option>
                    <option>1994</option>
                    <option>1995</option>
                    <option>1996</option>
                    <option>1997</option>
                    <option>1998</option>
                    <option>1999</option>
                    <option>2000</option>
                  </select></td>
              </tr>
              <tr>
                <td width="37%" height="1"><b>Hobby</b></td>
                <td width="63%" height="1">
                  
                  <p><select size="1" name="hobby">
                    <option selected>--Select--</option>
                    <option value="Painting">Painting</option>
                    <option value="Gradening">Gradening</option>
                    <option value="Listening Music">Listening Music</option>
                    <option value="Reading">Reading</option>
                    <option>Others</option>
                    &nbsp;
                    </select>&nbsp;</td>
              </tr>
              <tr>
                <td width="37%" height="27"><b>Games</b></td>
                <td width="63%" height="27"><select size="1" name="game">
                    <option selected>--Select--</option>
                    <option value="Cricket">Cricket</option>
                    <option value="Foot ball">Foot ball</option>
                    <option value="Tennis">Tennis</option>
                    <option value="Hockey">Hockey</option>
                    <option value="Others">Others</option>
                    &nbsp;
                    </select></td>
              </tr>
              <tr>
                <td width="37%" height="27"><b>Education</b></td>
                <td width="63%" height="27"><select size="1" name="edu">
                    <option selected>--Select--</option>
                    <option value="B.Sc">B.Sc</option>
                    <option value="M.Sc">M.Sc</option>
                    <option value="BTech">BTech</option>
                    <option value="MTech">MTech</option>
                    <option value="MCA">MCA</option>
                    <option value="B Com">B Com</option>
                    <option value="Others">Others</option>
                    &nbsp;
                    </select></td>
              </tr>
            </tbody>
          </table>
          </div>
          <input type="submit" value="Submit" name="B1">
        </form>
      </td>
    </tr>
  </tbody>
</table>

<p><b>
          

</center>
          

</body>

</html>
