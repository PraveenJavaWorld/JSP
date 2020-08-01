<%@ page language="java" contentType="text/html" import="test.RegBean"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
	String name=(String)request.getAttribute("name");
	out.println("WELCOME:"+name);
	RegBean rb=(RegBean)application.getAttribute("beanRef");
	%>
	<form action="update" method="post"><br>
	FirstName:<input type="text" name="fname" value="<%=rb.getfName()%>"><br>
	LastName:<input type="text" name="lname" value="<%=rb.getlName()%>"><br>
	MailID:<input type="text" name="mid" value="<%=rb.getMid()%>"><br>
	PhoneNumber:<input type="text" name="phno" value="<%=rb.getPhno()%>"><br>
	<input type="submit" value="Update"><br> 
	</form>
</body>
</html>