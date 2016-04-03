<%
String uname=(String)session.getAttribute("u_name");
if(uname==null){
%>
<jsp:include page="login.jsp"/>
<%
}else {
%>
<jsp:include page="login.jsp"/>
<%
}
%>
