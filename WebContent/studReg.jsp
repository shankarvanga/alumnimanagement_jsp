<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<link href="css/menu-css.css" rel="stylesheet" type="text/css" />
<script src="js/yav.js"  language="javascript"></script>
<script src="js/yav-config.js" language="javascript"></script>
<script src="js/utils-functions.js"  language="javascript"></script>
</head>

<body>
<div id="container">
<div id="top">
<jsp:include page="include/header.jsp" flush="true" />
</div>
<div id="search-bar">
<a href="#" style="color:#000000"><b>Home</b></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="" style="color:#000000"><b>The Institute</b></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="" style="color:#000000"><b>Academics</b></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="" style="color:#000000"><b>Quick Links</b></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="" style="color:#000000"><b>Happinings</b></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="" style="color:#000000"><b>Admissions</b></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="" style="color:#000000"><b>Others</b></a>&nbsp;&nbsp;&nbsp;&nbsp;
</div>
<div id="leftnav">

<jsp:include page="include/left-menu.jsp" flush="true" />

<div  id="box-01">
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut.
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut.
</div>
<div  id="box-01">
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut.
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut.
</div>

</div>
<div id="rightnav">
<table cellspacing="0" cellpadding="0">
  <tr>
    <td align="middle" width="200" height="30"><strong>Admissions</strong></td>
  </tr>
  <tr>
    <td><ul>
      <li><a href="http://www.ssvps.com/fe.html">FE</a> </li>
      <li><a href="http://www.ssvps.com/se.html">SE</a> </li>
      <li><a href="http://www.ssvps.com/me.html">ME</a> </li>
      <li><a href="http://www.ssvps.com/mba.html">Management   Studies</a></li>
    </ul></td>
  </tr>
</table>

<table cellspacing="0" cellpadding="0">
  <tr>
    <td align="middle" width="185" height="30"><strong>Happenings</strong></td>
  </tr>
  <!----photo.php to be linked----->
  <tr>
    <td><ul>
      <li><a href="http://ssvps.com/photo.html">Photo   Gallery</a> </li>
      <li><a href="http://www.nmu.ac.in/online%20result/aspx/online%20result.aspx" target="mainframe1">Results</a> </li>
      <li><a href="http://www.ssvps.com/construction.html">Events</a> </li>
    </ul></td>
  </tr>
</table>
<p>&nbsp;</p>
</div>

<div id="content">
  <div class="heading">Register User  </div>
  <br/>
A Premier Institute as a dynamic entity contributing in Human Resource Development and Solution Provider to Industry and Society. 
<br/>
<form id="form1" name="form1" method="post" action="do?MOD=STUD&Action=Reg">
  <table width="511" border="0">
    <tr>
      <td colspan="4" bgcolor="#000000"><font color="#FFFFFF">&nbsp;&nbsp;<b>Student Registration </b></font></td>
      </tr>
    <tr>
      <td width="19">&nbsp;</td>
      <td width="124">&nbsp;</td>
      <td width="5">&nbsp;</td>
      <td width="335">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Student Name </td>
      <td>:</td>
      <td><label>
        <input name="sname" type="text" id="sname" size="30" />
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Password</td>
      <td>:</td>
      <td><label>
        <input name="pass" type="password" id="pass" size="30" />
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Branch Name </td>
      <td>:</td>
      <td><label>
        <select name="bname">
			<option value="Computer">Computer Engineering</option>
			<option value="Mech">Mech Engineering</option>
			<option value="IT">Information Technology</option>
			<option value="Prod">Production Engineering</option>
        </select>
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Year</td>
      <td>:</td>
      <td><label>
        <select name="year">
		<option value="1">1st Year</option>
		<option value="2">2nd Year</option>
		<option value="3">3rd Year</option>
        </select>
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Address</td>
      <td>:</td>
      <td><label>
        <textarea name="add" cols="40" rows="5" id="add"></textarea>
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Mobile No. </td>
      <td>:</td>
      <td><label>
        <input name="mob" type="text" id="mob" />
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>E-mail</td>
      <td>:</td>
      <td><label>
        <input name="email" type="text" id="email" />
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><label>
        <div align="right">
          <input type="reset" name="Submit2" value="Reset" />
          </div>
      </label></td>
      <td>&nbsp;</td>
      <td><label>
        <input type="submit" name="Submit" value="Register Now" />
      </label></td>
    </tr>
    <tr>
      <td colspan="4">&nbsp;</td>
      </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
<br/>
<br/>

<!-- 
Closing of Prod
-->


</div>
<!--
Closing of Conetent
 -->


<div id="footer">
<jsp:include page="include/footer.jsp" flush="true" />
</div>
</div>
</body>
</html>
