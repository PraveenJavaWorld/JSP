<%@ page language="java" contentType="text/html"%>
<html>
<head>
<title>JSP Program</title>
</head>
<body>
	<%
		String uname=request.getParameter("uname");
		String fname=request.getParameter("fname");
		long phno=Long.parseLong(request.getParameter("phno"));
		String mid=request.getParameter("mid");
		out.println("<br>UserName:"+uname);
		out.println("<br>FullName:"+fname);
		out.println("<br>PhoneNumber:"+phno);
		out.println("<br>MailID:"+mid);
	%>
</body>
</html>