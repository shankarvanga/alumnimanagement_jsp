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
  <div class="heading">
  <p>Your Registration is Successfully Done</p>
</div>
  <p><b><a href="login.jsp">Click Here</a> to Login.</b></p>

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
