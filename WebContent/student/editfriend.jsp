<%
java.util.HashMap hm=(java.util.HashMap)session.getAttribute("user");
%>
<div class="box2">
<div class="heading">Edit <%=(String)hm.get("u_name")%>'s Profile </div>

<form id="frmEditFriend" name="frmEditFriend" method="post" action="../do?MOD=STUD&Action=FriendEdit">

  <table width="423" border="0">
    <tr>
      <td width="117">&nbsp;</td>
      <td width="8">&nbsp;</td>
      <td width="283"><input type="hidden" name="sId" value="<%=(String)hm.get("u_id")%>"></td>
    </tr>
    <tr>
      <td>Friend Name </td>
      <td>:</td>
      <td><label>
        <input type="text" name="fName"  size="40" value="<%=(String)hm.get("u_name")%>"/>
      </label></td>
    </tr>
    <tr>
      <td>Password</td>
      <td>:</td>
      <td><input name="password" type="text" id="password"  size="40" value="<%=(String)hm.get("u_pass")%>"/></td>
    </tr>
    <tr>
      <td>Branch</td>
      <td>:</td>
      <td><input name="branch" type="text" id="branch"  size="40" value="<%=(String)hm.get("u_branch")%>"/></td>
    </tr>
    <tr>
      <td>Year</td>
      <td>:</td>
      <td><select name="year" >
        <option value="1">First Year</option>
        <option value="2">Second Year</option>
        <option value="3">Third Year</option>
      </select></td>
    </tr>
    <tr>
      <td>Address</td>
      <td>:</td>
      <td><textarea name="address" cols="37" id="address"><%=(String)hm.get("u_address")%></textarea></td>
    </tr>
    <tr>
      <td>Mobile No. </td>
      <td>&nbsp;</td>
      <td><input name="mobile" type="text" id="mobile"  size="30" value="<%=(String)hm.get("u_mobile")%>"/></td>
    </tr>
    <tr>
      <td>E-mail</td>
      <td>:</td>
      <td><input name="email" type="text" id="email"  size="40" value="<%=(String)hm.get("u_email")%>"/></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><label>
        <div align="right">
          <input type="reset" name="Submit2" value="Reset" />
          </div>
      </label></td>
      <td>&nbsp;</td>
      <td><label>																		
        <input  type="button" value="Edit <%=(String)hm.get("u_name")%>'s Profile"  onclick="findEditFriend();"/>
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
</div>
