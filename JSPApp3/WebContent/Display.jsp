<%@ page language="java" contentType="text/html"%>
<html>
<head>
<title>JSP Program</title>
</head>
<body>
	<%
	String name=request.getParameter("name");
	int contextval=Integer.parseInt(application.getInitParameter("ContextVal"));
	int configval=Integer.parseInt(config.getInitParameter("ConfigVal"));
	out.println("WELCOME:"+name);
	out.println("<br>ContextVal:"+contextval);
	out.println("<br>ConfigVal:"+configval);
	out.println("<br>JSPName:"+config.getServletName());
	%>
</body>
</html>