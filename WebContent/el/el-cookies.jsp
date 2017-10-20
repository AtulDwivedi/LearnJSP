<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EL - Cookies</title>
</head>
<body>
	<h1>Fetch Cookies without using EL</h1>
	<%
		Cookie ck[] = request.getCookies();
		for (Cookie c : ck) {
			%><br><%
			String cName = c.getName();
			if (cName.equals("email")) {
				String cValue = c.getValue();
				out.println(cValue);
			}
			else if(cName.equals("gender")){
				String cValue = c.getValue();
				out.println(cValue);
			}
			else{
				break;
			}
		}
	%>

	<hr>

	<h1>Fetch Cookies using EL</h1>
	<br> ${cookie.email.value}
	<br> ${cookie.gender.value}
</body>
</html>