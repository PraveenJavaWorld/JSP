<%@ page language="java" contentType="text/html" import="test.RegBean"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
	RegBean rb=(RegBean)application.getAttribute("beanRef");
	out.println("----Registration Details----");
	out.println("<br>UserName:"+rb.getuName());
	out.println("<br>Password:"+rb.getpWord());
	out.println("<br>FirstName:"+rb.getfName());
	out.println("<br>LastName:"+rb.getlName());
	out.println("<br>MailID:"+rb.getMid());
	out.println("<br>PhoneNumber:"+rb.getPhno());
	out.println("<br>");
	%>
	<form action="final" method="post">
	<input type="submit" value="Register">
	</form>
</body>
</html>