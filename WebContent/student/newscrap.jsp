<%
String r_id=(String)session.getAttribute("rId");
%>
<div class="heading">Scrap Details</div>
<form action="../do?MOD=STUD&Action=PostSc" method="post">
<div class="box2">
  <b>Scrap to Friend</b>
  <input type="hidden" value="<%=r_id%>" name="rId"/>
  <p>
    <label>
    <textarea name="msg" cols="60" rows="5"></textarea>
    </label>
  </p>
      <input type="submit" value=" Post Scrap "  align="right"/>
 
</div><br/>
</form>