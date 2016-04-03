<div class="box2">
<div class="heading">Find a Friend</div>

<form id="frmFindFriend" name="frmFindFriend" method="post" action="../do?MOD=STUD&Action=FindFriend">
  <table width="423" border="0">
    <tr>
      <td width="117">&nbsp;</td>
      <td width="8">&nbsp;</td>
      <td width="283">&nbsp;</td>
    </tr>
    <tr>
      <td>Friend Name </td>
      <td>:</td>
      <td><label>
        <input type="text" name="fName"  size="40"/>
      </label></td>
    </tr>
    <tr>
      <td>Year</td>
      <td>:</td>
      <td><label>
        <select name="year" >
		<option value="1">First Year</option>
		<option value="2">Second Year</option>
		<option value="3">Third Year</option>
        </select>
      </label></td>
    </tr>
    <tr>
      <td><label>
        <div align="right">
          <input type="reset" name="Submit2" value="Reset" />
          </div>
      </label></td>
      <td>&nbsp;</td>
      <td><label>																		
        <input  type="button" value="Find Friend"  onclick="findFriend();"/>
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
