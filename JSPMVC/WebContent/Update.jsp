<%@ page language="java" contentType="text/html"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
	String name=(String)request.getParameter("name");
	out.println("WELCOME:"+name);
	out.println("<br>");
	%>
	<jsp:include page="Link.html"/>
	<%out.println("<br>Profile Updated Successfully...."); %>
</body>
</html>