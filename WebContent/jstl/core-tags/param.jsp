<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
<c:url value="jstl-core-tags.jsp" var="jct">
<c:param name="name">Atul</c:param>
<c:param name="why">Advance Jave</c:param>
</c:url>
${jct}
</body>  
</html>
</body>
</html>