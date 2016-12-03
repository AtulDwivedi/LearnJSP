<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="directive-error.jsp"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Devide by zero</title>
</head>
<body>
<%
int num1 = Integer.parseInt(request.getParameter("num1").toString());
int num2 = Integer.parseInt(request.getParameter("num2").toString());

out.print(num1/num2);
%>
</body>
</html>