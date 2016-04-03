<h2>FriendList:-)</h2>
<%
String sId=(String)session.getAttribute("s_id");
java.util.ArrayList al=(java.util.ArrayList)session.getAttribute("fList");
int size=al.size();
if(size>0){
for(int i=0;i<size;i++){
java.util.ArrayList one=(java.util.ArrayList)al.get(i);
%>
<div class="box1">
<div class="photo">
<img width="100" height="80" src="../images/anon.gif" alt="Friends Photo" />
</div>
<div class="heading"><%=(String)one.get(1)%></div>
<div class="box_content">
<b>Email: :</b><%=(String)one.get(5)%><br/>
<b>Address :</b><%=(String)one.get(6)%><br/>
<b>Year :</b>&nbsp;<%=(String)one.get(3)%> Year - <%=(String)one.get(2)%><br/> 
<b>Mobile No. :</b><%=(String)one.get(4)%><br/>
<a href="../do?MOD=STUD&Action=Scrap&sId=<%=sId%>&rId=<%=(String)one.get(0)%>">Scrap to <%=(String)one.get(1)%></a>&nbsp;&nbsp; 
<a href="../do?MOD=STUD&Action=Profile&sId=<%=(String)one.get(0)%>">View Profile</a>
</div>
</div>
<%
}//for
}//if
else {
%>
<h3>Sorry:-(<br/><br/>
There is No Student with this Name.
</h3>
<%
}
%>