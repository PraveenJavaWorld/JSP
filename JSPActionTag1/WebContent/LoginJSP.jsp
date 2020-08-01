<%@ page language="java" contentType="text/html" import="java.sql.*,test.DBConnection"%>
<html>
<head>
<title>JSP Program</title>
</head>
<body>
	<%
	String uname=request.getParameter("uname");
	String pword=request.getParameter("pword");
	Connection con=DBConnection.get();
	PreparedStatement ps=con.prepareStatement("select * from userreg16 where username=? and password=?");
	ps.setString(1,uname);
	ps.setString(2,pword);
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
		%>
		<jsp:forward page="WelcomeJSP.jsp">
			<jsp:param value="<%= rs.getString(3) %>" name="fname"/>
		</jsp:forward>
		<% 
	}
	else{
		out.println("Invalid Credentials....");
		%>
		<jsp:include page="Login.html"></jsp:include>
		<%
	}
		%>
	
</body>
</html>