<form id="form1" name="loginStudentForm" method="post" action="do?MOD=STUD&Action=Login" >
    <table width="267" border="0" align="left">
      <tr>
        <td colspan="3"><div id="log_now"><font color="#FFFFFF"><b>Student Login</b></font></div></td>
      </tr>
      <tr>
        <td colspan="3">
		<font color="#FF0000"><b>
		
</b></font>
		</td>
      </tr>
      <tr>
        <td width="98">Student Name</td>
        <td width="5"><strong>:</strong></td>
        <td width="150"><label>
          <input type="text" name="userName" />
        </label></td>
      </tr>
      <tr>
        <td>Password</td>
        <td><strong>:</strong></td>
        <td><label>
          <input type="password" name="userPass" />
        </label></td>
      </tr>
      <tr>
        <td colspan="2"><label>
          <div align="right">
            <input type="reset" value="Reset" />
          </div>
        </label></td>
        <td><label>
          <input type="button" name="Submit" value="Login Now" onclick="loginStudent();" />
        </label></td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2"><a href="studReg.jsp">Register Now? </a></td>
        <td>&nbsp;</td>
      </tr>
  </table>
  </form>