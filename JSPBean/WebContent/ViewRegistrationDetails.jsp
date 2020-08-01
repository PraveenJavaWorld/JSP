<%@ page errorPage="Registration.html"%>
<jsp:useBean id="regForm" type="test.RegForm" scope="session"/>
<html>
<body>
	<pre>
	<b>UserName:</b><jsp:getProperty name="regForm" property="uname"/>
	<b>Password:</b><jsp:getProperty name="regForm" property="pass"/>
	<b>EmailID:</b><jsp:getProperty name="regForm" property="email"/>
	<b>FirstName:</b><jsp:getProperty name="regForm" property="fn"/>
	<b>LastName:</b><jsp:getProperty name="regForm" property="ln"/>
	<b>Address:</b><jsp:getProperty name="regForm" property="address"/>
	</pre>
	<form action="Process.jsp">
	<input type="submit" value="Register"/>
	</form>
</body>
</html>