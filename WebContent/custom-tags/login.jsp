<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="err" uri="http://atuldwivedi.com/ctags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Learn Custom Tags</title>
</head>
<body>
	<form action="CTagsLoginServlet" method="post">
		<label>User Name:</label><input type="text" name="userName" />
		<font color="red"><err:loginError property="userName" /></font>
		<br /> <label>Password:</label><input type="password" name="password" />
		<font color="red"><err:loginError property="password" /></font>
		<br /> <input type="submit" value="Login" />
	</form>
</body>
</html>