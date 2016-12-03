<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome page!</title>
</head>
<body>

	<h1>
		Welcome
		<%-- <%=request.getParameter("myName") %>
		
		<% request.setAttribute("msg", "Some message");  --%>
		
		<%
		   // Throw an exception to invoke the error page
		   int x = 1;
		   if (x == 1)
		   {
		      throw new RuntimeException("Error condition!!!");
		   }
		%>
	
		<font color="green">Hi</font>
	</h1>
</body>
</html>