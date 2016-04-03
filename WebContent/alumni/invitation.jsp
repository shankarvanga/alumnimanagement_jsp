<%
System.out.print("in invitation page...............");
java.util.ArrayList inv=(java.util.ArrayList)session.getAttribute("inv");
int size=inv.size();
System.out.print("Size : "+size);
if(size>0){
for(int i=0;i<size;i++){
java.util.ArrayList o=(java.util.ArrayList)inv.get(i);

%>

<style type="text/css">
<!--
.style1 {
	color: #FFFFFF;
	font-weight: bold;
}
-->
</style>
<table width="416" border="0">
  <tr>
    <td colspan="3" bgcolor="#333333">&nbsp;&nbsp;&nbsp;<span class="style1"><%=(String)o.get(0)%></span></td>
  </tr>
  <tr>
    <td width="79">Date</td>
    <td width="7">:</td>
    <td width="308"><%=(String)o.get(2)%></td>
  </tr>
  <tr>
    <td>Message</td>
    <td>:</td>
    <td><%=(String)o.get(1)%></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<br/>
<br/>
<%
}//for
}//if
else {
%>
<h3>No Invitation Founds:-(</h3>
<%
}
%>
