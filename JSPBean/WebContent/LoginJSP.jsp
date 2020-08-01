<%@ page language="java" contentType="text/html" import="java.sql.*,test.DBConnection"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
	String uname=request.getParameter("uname");
	String pword=request.getParameter("pword");
	Connection con=DBConnection.get();
	PreparedStatement ps=con.prepareStatement("select * from regform where username=? and password=?");
	ps.setString(1,uname);
	ps.setString(2,pword);
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
		out.println("WELCOME:"+rs.getString(3));
	}
	else{
		out.println("Invalid Credentials");
	%>
	<jsp:include page="Login.html"/>
	<%
	}
	%>
</body>
</html>