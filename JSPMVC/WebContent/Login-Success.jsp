<%@ page language="java" contentType="text/html"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
	String fname=(String)request.getAttribute("fname");
	out.println("WELCOME:"+fname+"<br>");
	%>
	<jsp:include page="Link.html"/>
</body>
</html>