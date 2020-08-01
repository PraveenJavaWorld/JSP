<%@ page language="java" contentType="text/html"%>
<html>
<head>
<title>JSP Program</title>
</head>
<body>
	<%
	String fname=request.getParameter("fname");
	out.println("WELCOME:"+fname);
	%>
</body>
</html>