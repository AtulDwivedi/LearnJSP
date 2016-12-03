<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="trn" class="com.atuldwivedi.learnjsp.bean.Trainee" scope="application" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get Property</title>
</head>
<body>
<jsp:getProperty property="traineeName" name="trn"/>
<%= trn.getIntituteName() %>
</body>
</html>