<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Include Action Footer</title>
</head>
<body>
<hr>
<h1>Include action footer</h1>
<b><% out.print("Today is:"+java.util.Calendar.getInstance().getTime()); %></b>
<br>
Copyright &copy; <%= request.getParameter("copyrightYear") %>  
</body>
</html>