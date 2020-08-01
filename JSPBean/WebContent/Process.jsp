<%@ page import="test.RegisterDAO"%>
<jsp:useBean id="regForm" type="test.RegForm" scope="session"/>
<%
int status=RegisterDAO.register(regForm);
if(status>0)
	out.println("You are Successfully Registered....");
%>
<jsp:include page="Login.html"/>