<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Error Page</title>
</head>
<body>
<h1>Oops... Something went wrong</h1>
<%
out.print(exception.getMessage());

%>
<br>
<%=exception.getClass() %>
<br>
<%=response.getStatus() %>
</body>
</html>