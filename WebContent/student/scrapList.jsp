<%
java.util.ArrayList al=(java.util.ArrayList)session.getAttribute("all-scr");
int size=al.size();
if(size>0){
for(int i=0;i<size;i++){
java.util.ArrayList o=(java.util.ArrayList)al.get(i);
%>
<div class="heading">Scrap Details&nbsp;(<%=size%>&nbsp;Scrap)</div>

<div class="box2">
<b ><a href="" style="border-bottom:2px;">Scrap No.&nbsp; <%=i+1%></a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=(String)o.get(2)%><br/>
<br/>From&nbsp;:<a href="../do?MOD=STUD&Action=Profile&sId=<%=o.get(0)%>"><%=(String)o.get(3)%></a>
<hr width="500" align="left"/>
<%=(String)o.get(1)%>
</div><br/>
<%
}//for
}//if
else {
%>
<h3>No Scrap Founds:-(</h3>
<%
}
%>
