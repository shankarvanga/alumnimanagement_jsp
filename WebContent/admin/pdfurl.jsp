<%@ page import="java.util.*;"%>
<%session.setAttribute("content_page", "logged.jsp");
ArrayList a = (ArrayList)session.getAttribute("queryResult");%>
<div><a href="../ad?Action=download">Download pdf</a></div>
<div class="result">
	<table border="1">
	<%for(int i=0;i<a.size();i++){
		ArrayList temp=(ArrayList)a.get(i);
		%>
		<tr>
			<td><%=(String)temp.get(1) %></td>
			<td><a href="../ad?Action=proof&id=<%=temp.get(0).toString() %>&name=<%=(String)temp.get(1)%>">Download Proof</a>
		</tr>
		<%} %>
	</table>
</div>