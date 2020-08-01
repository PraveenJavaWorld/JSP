<%@ page language="java" contentType="text/html" import="java.util.*"%>
<html>
<head>
<title>JSP Factorial Program</title>
</head>
<body>
	<h4>Current Date And Time:</h4>
	<%= new Date() %>
	<%! int fact=1;
	int factorial(int n)
	{
		for(int i=n;i>=1;i--)
		{
			fact=fact*i;
		}
		return fact;
	}
	%>
	<%
	int number=Integer.parseInt(request.getParameter("number"));
	out.println("<br>Factorial="+factorial(number));
	%>
	<%@ include file="input.html" %>
</body>
</html>