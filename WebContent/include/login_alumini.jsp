<form id="form1" name="loginAluminiForm" method="post" action="do?MOD=ALUM&Action=Login" >
    <table width="257" border="0" align="left">
      <tr>
        <td colspan="3"><div id="log_now"><font color="#FFFFFF"><b>Alumini Login</b></font></div></td>
       </tr>
      <tr>
        <td width="87">Alumini Name</td>
        <td width="3"><strong>:</strong></td>
        <td width="153"><label>
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
          <input type="button" name="Submit" value="Login Now" onclick="loginAlumini();" />
        </label></td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2"><a href="alumReg.jsp">Register Now? </a></td>
        <td>&nbsp;</td>
      </tr>
    </table>
  </form>