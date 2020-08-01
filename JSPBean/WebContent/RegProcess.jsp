<%@ page errorPage="Registration.html"%>
<html>
<body>
	<jsp:useBean id="regForm" class="test.RegForm" scope="session"/>
	<jsp:setProperty property="*" name="regForm"/>
	<form action="RegProcessFinal.jsp"><pre><b>
	FirstName:<input type="text" name="first_name"/><br>
	LastName:<input type="text" name="last_name"/><br>
	Address:<input type="text" name="address"/><br>
	<input type="submit" value="Register"/>
	</b></pre></form>
</body>
</html>