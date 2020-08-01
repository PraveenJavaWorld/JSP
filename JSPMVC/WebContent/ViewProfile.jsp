<%@ page language="java" contentType="text/html" import="test.RegBean"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
	String name=(String)request.getAttribute("name");
	out.println("WELCOME:"+name+"<br>");
	%>
	<jsp:include page="Link.html"/>
	<%
	RegBean rb=(RegBean)application.getAttribute("beanRef");
	out.println("<br>---Profile Details---");
	out.println("<br>FirstName:"+rb.getfName());
	out.println("<br>LastName:"+rb.getlName());
	out.println("<br>MailID:"+rb.getMid());
	out.println("<br>PhoneNumber:"+rb.getPhno());
	%>
</body>
</html>