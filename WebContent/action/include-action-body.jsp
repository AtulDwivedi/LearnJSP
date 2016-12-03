<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Include Action</title>
</head>
<body>
<jsp:include page="include-action-header.jsp" />
<h1>Include Action</h1>
<jsp:include page="include-action-footer.jsp">
<jsp:param value="2016" name="copyrightYear" />
</jsp:include>
</body>
</html>