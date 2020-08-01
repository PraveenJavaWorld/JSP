<%@ page language="java" contentType="text/html"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
	String msg=(String)request.getAttribute("msg");
	out.println(msg);
	%>
	<jsp:include page="Login.html"/>
</body>
</html>