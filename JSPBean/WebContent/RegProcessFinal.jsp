<%@ page errorPage="Registration.html"%>
<jsp:useBean id="regForm" type="test.RegForm" scope="session"/>
<jsp:setProperty name="regForm" property="fn" param="first_name"/>
<jsp:setProperty name="regForm" property="ln" param="last_name"/>
<jsp:setProperty name="regForm" property="address"/>
<html>
<body>
	<pre>
	Your Registration details are valid,
	<a href="ViewRegistrationDetails.jsp">Click</a>
	here to view Registration Details and Confirm
	</pre>

</body>
</html>