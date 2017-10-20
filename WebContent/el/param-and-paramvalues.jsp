<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>param and paramValues</title>
</head>
<body>
<form action="process-param-and-paramvalues.jsp?pageId=1001" method="post">
<input type="text" name="name" placeholder="Enter name" /><br>
<input type="checkbox" name="course" value="Core Java" /> Core Java <br>
<input type="checkbox" name="course" value="Advance Java" /> Advance Java <br>
<input type="submit" value="Submit" />
</form>
</body>
</html>