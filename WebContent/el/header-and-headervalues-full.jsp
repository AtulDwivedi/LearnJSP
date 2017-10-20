<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>header and headerValues</title>
</head>
<body>
	


	<c:forEach items='${header}' var='h'>
		<ul>
			<li>Header Name: <c:out value='${h.key}' /></li>
			<li>Header Value: <c:out value='${h.value}' /></li>
		</ul>
	</c:forEach>
	
	<hr>
	
	<c:forEach items='${headerValues}' var='hv'>
   <ul>
      <%-- Display the key of the current item; that item
           is a Map.Entry --%>
      <li>Header name: <c:out value='${hv.key}'/></li>
   
      <%-- The value of the current item, which is
           accessed with the value method from 
           Map.Entry, is an array of strings 
           representing request header values, so
           we iterate over that array of strings --%>
      <c:forEach items='${hv.value}' var='value'>
      <ul>
           <li>Header Value: <c:out value='${value.split(\',\')[2]}'/></li>
           </ul>
      </c:forEach>
   </ul>
</c:forEach>
</body>
</html>